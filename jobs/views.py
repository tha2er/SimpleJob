import datetime
from django.shortcuts 				import render,get_object_or_404
from django.http 					import HttpResponse,HttpResponseRedirect,Http404
from django.urls 					import reverse
from .models 						import Job,JobApplication
from django.contrib.auth.hashers 	import make_password
from django.contrib.auth.models 	import User
from django.utils 					import timezone
from django.contrib.auth 			import authenticate, login as auth_login,logout as auth_logout

def index(request):
    latestJobsList 	= Job.objects.filter(is_active=1).order_by('-date_inserted')[:6]
    pageContext 	= {
        'latestJobsList': latestJobsList,
    }
    return render(request, 'jobs/index.html', pageContext)

def job(request, id_job):
	job = get_object_or_404(Job, pk=id_job)
	if job.is_active:
		return render(request, 'jobs/job_page.html', {'job': job})
	else:
		return HttpResponse("Sorry, The job you requested is no more open.")

def jobapplication(request, id_job):
    job 			= get_object_or_404(Job, pk=id_job)
    if request.POST.get('apply',False):
        newJobApplication = JobApplication(id_job=job,name=request.POST['name'],email=request.POST['email'],gender=request.POST['gender'],status='Pending')
        newJobApplication.save()
        return HttpResponseRedirect(reverse('jobs:thanks', args=(job.id_job,newJobApplication.id_job_application,)))
    else:
        pageContext 	= {
            'job': job,
        }
        return render(request, 'jobs/job_apply.html', pageContext)

def thanks(request, id_job, id_job_application):
    job = get_object_or_404(Job, pk=id_job)
    jobApplication = get_object_or_404(JobApplication, pk=id_job_application)
    pageContext = {
        'job': job,
        'jobApplication': jobApplication
    }
    return render(request, 'jobs/thanks.html', pageContext)

def register(request):
    if request.POST.get('register',False):
    	try:
            newUser = User(username=request.POST['username'],first_name=request.POST['first_name'],last_name=request.POST['last_name'],email=request.POST['email'],is_staff=0,is_active=1,date_joined=timezone.now(),is_superuser=0,password=make_password(request.POST['password']))
            newUser.save()
            return HttpResponseRedirect(reverse('jobs:login'))
        except (KeyError):
            pageContext = {
                'error_message': 'Invalid details',
            }
            return render(request, 'jobs/register.html', pageContext)
    else:
        return render(request, 'jobs/register.html')

def login(request):
    if request.POST.get('login',False):
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=username,password=password)
        if user is not None:
            auth_login(request, user)
            return HttpResponseRedirect(reverse('jobs:post'))
        else:
            pageContext = {
                'error_message': 'Invalid login details',
            }
            return render(request, 'jobs/login.html', pageContext)
    else:
    	return render(request, 'jobs/login.html')

def logout(request):
    auth_logout(request)
    return HttpResponseRedirect(reverse('jobs:index'))

def post(request):
    if request.POST.get('post',False):
    	try:
            jobTitle = request.POST['title']
            jobDesc  = request.POST['desc']
            newJob   = Job(job_title=jobTitle,job_desc=jobDesc,id_user=request.user.id,is_active=1)
            newJob.save()
            return HttpResponseRedirect(reverse('jobs:index'))
    	except (KeyError):
            pageContext = {
                'error_message': 'Invalid Job details',
            }
            return render(request, 'jobs/post.html', pageContext)
    else:
        return render(request, 'jobs/post.html')

def contact(request):
	return render(request, 'jobs/contact.html')