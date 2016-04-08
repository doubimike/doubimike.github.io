from django.shortcuts import render
from django.http import HttpResponse
from django.http import Http404
from blog.models import Blog

# Create your views here.
def index(request):
	blog_list = Blog.objects.all().order_by('-id')[1:7]
	first_blog = 	Blog.objects.all().order_by('-id')[0]
	context = {}
	context['blogs']=blog_list
	context['first_blog']=first_blog
	return render(request,'website/firstpage.html',context)

def comment(request):
	return render(request,'website/comment.html')	