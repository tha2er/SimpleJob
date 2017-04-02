from django.conf.urls import url

from . import views

app_name = 'jobs'

urlpatterns = [
    # ex: / (homepage of the app)
    url(r'^$', views.index, name='index'),
    # ex: /jobs/1/
    url(r'^(?P<id_job>[0-9]+)/$', views.job, name='job'),
    # ex: /jobs/1/application/
    url(r'^(?P<id_job>[0-9]+)/application/$', views.jobapplication, name='jobapplication'),
    # ex: /jobs/1/thanks/
    url(r'^(?P<id_job>[0-9]+)/thanks/(?P<id_job_application>[0-9]+)$', views.thanks, name='thanks'),
    # ex: /jobs/contact/
    url(r'^contact/$', views.contact, name='contact'),
    # ex: /jobs/register/
    url(r'^register/$', views.register, name='register'),
    # ex: /jobs/login/
    url(r'^login/$', views.login, name='login'),
    # ex: /jobs/logout/
    url(r'^logout/$', views.logout, name='logout'),
    # ex: /jobs/post/
    url(r'^post/$', views.post, name='post'),
]