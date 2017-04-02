from django.contrib import admin

from .models import Job,JobApplication

# Override django site header title
admin.site.site_header = 'Simple Jobs'

# Custome view for Jobs list in Admin backend
class JobAdmin(admin.ModelAdmin):
	fields 			= ['job_title','job_desc','is_active','id_user','date_inserted']
	list_display 	= ('job_title', 'jobStatus','date_inserted')
	list_filter 	= ['date_inserted']
	search_fields 	= ['job_title']

# Custome view for Jobs Application list in Admin backend
class JobApplicationAdmin(admin.ModelAdmin):
	fields 			= ['id_job','status','date_inserted','name','email','gender']
	list_display 	= ['name','id_job','email','gender','status','date_inserted']
	list_filter 	= ['gender','status','id_job','date_inserted']

# Register the new custome views
admin.site.register(Job, JobAdmin)
admin.site.register(JobApplication, JobApplicationAdmin)