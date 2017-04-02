A SimpleJob app using Python / Django

@Author : Thaer Bataineh (batathaer@gmail.com)

Hello there,

-- This is a simple job app built using Python 2.7.10 and Django 1.10.6 final, covering :

	- The app is totally isolated and can be used in other projects.
	- Jobs listing on homepage.
	- Ability to apply for any job anonymouslly.
	- Anyone can register an account and post his/her own job.
	- Admin backend using customized Django automated admin interface.
	- An admin user can review to approve or disapprove all jobs, jobs application and users (who can post jobs).
	- Login and logout.
	- Simple UI using Bootstrap.

-- To get started with this project please follow this steps (Assuming you already have Python 2.7.10+ and Django 1.10.6 final):

	- Clone or download this repo.
	- Create a mysql database then load the attached sql file (simplejobs_db.sql) into it.
	- Change the DATABASES details in settings.py under jobsite dir to the one you just created.
	- From the command line, cd into a directory where you installed this project (be sure to be at the same path of manage.py file) and run the following command to start a light Django server:
		python manage.py runserver


-- What now ?

	- The website should now be up and running under the default Django server configs http://127.0.0.1:8000/
	- You are free to try out the website such as try to apply for any job anonymouslly or Post a job.
	- Login to Admin backend at http://127.0.0.1:8000/admin - a demo superuser (username: thaer password: django@123).
	- In Admin backend try to view the jobs application to approve or reject any one as follow :
		- Select any job application and edit it.
		- Change the status field to one of the following (Pending,Approved or Rejected).
	- In Admin backend try to view the jobs to active or deactive any job as follow :
		- Select any job and edit it.
		- Change the is_active field to one of the following (1 = active, 0 = not active).

Please feel free to contact me anytime at my email.

Enjoy,
Thaer