from django.conf.urls import include, url
from django.contrib import admin

# include Jobs app URLconfig
urlpatterns = [
    url(r'^', include('jobs.urls')),
    url(r'^admin/', admin.site.urls),
]