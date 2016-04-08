from django.conf.urls import include, url

urlpatterns = [
url(r'^([A-Za-z]+)/$','blog.views.showCate'),
    url(r'^$','blog.views.blogList'),

	url(r'^(\d+)/$','blog.views.blogShow'),
	
	url(r'^(\d{4})/(\d+)$','blog.views.showBytime'),
	url(r'^1getmonth$','blog.views.getmonth'),
]

