from django.test 	import TestCase
from .models 		import Job,JobApplication


class JobApplicationTests(TestCase):

    def test_apply_for_a_job(self):
    	job = Job.objects.filter(is_active=1).order_by('-date_inserted')[:1]
    	jobApplication = JobApplication(id_job=job,name='Test User',email='testemail@test.com',gender='male')
        self.assertIs(jobApplication.save(), False)