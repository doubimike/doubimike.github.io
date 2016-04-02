from django.shortcuts import render
from blog.models import Blog
from django.http import HttpResponse
from django.shortcuts import render
from django.shortcuts import render_to_response
from django.http import Http404

# Create your views here.
def blogList(request):
	blog_list = Blog.objects.all()
	return render_to_response('blog/blogList.html',{'blogs':blog_list})

def blogShow(request,param): 
	try:
		blog = Blog.objects.get(id=param)
		context = {}
		context['blog_title']=blog.blog_title
		context['pub_date']=blog.pub_date
		context['blog_content']=blog.blog_content
	except:
		raise Http404	
	return render_to_response('blog/blogShow.html',context)
	
