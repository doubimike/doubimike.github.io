from django.shortcuts import render
from django.http import HttpResponse

from django.shortcuts import render 

# Create your views here.

def template(request):
	context = {}
	context['label']='hello world mike'
	return render(request,'cv/index.html',context)