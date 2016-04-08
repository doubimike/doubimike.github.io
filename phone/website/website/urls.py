"""website URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
from django.conf.urls import include, url
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.staticfiles import views

urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
    url(r'^cv/',include('cv.urls')),
    url(r'^blog/',include('blog.urls')),
    url('^markdown/', include( 'django_markdown.urls')),
    url(r'^$','website.views.index'),    
    url(r'^login/$','users.views.login'),
    url(r'^users/login/$','users.views.loginHandle'),
    url(r'^logout/$','users.views.logoutHandle'),
    url(r'^comment/$','website.views.comment'),
    url(r'^register/$','users.views.register'),
    url(r'^users/success/$','users.views.success'),
    url(r'^checkUser$','users.views.checkUser'),
    url(r'^ckeditor/', include('ckeditor_uploader.urls')),
] 

urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT) 

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

if settings.DEBUG:
    urlpatterns += [
        url(r'^static/(?P<path>.*)$', views.serve),
    ]

if settings.DEBUG:
    urlpatterns += [
        url(r'^media/(?P<path>.*)$', views.serve),
    ]