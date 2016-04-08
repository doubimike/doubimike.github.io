#!/usr/bin/env python
# -*- coding: utf-8 -*- 

from django.shortcuts import render
from django.http import HttpResponse
from django.core.context_processors import csrf
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User  

# from users.models import User
from django.contrib.auth import *
from django.shortcuts import redirect
from django.contrib.auth import login as auth_login


# Create your views here.
def login(request):
	return render(request,'users/login.html')	

def loginHandle(request):
	username = ''
	password = ''
	username = request.POST['username']
	password = request.POST['password']
	user = authenticate(username=username, password=password)
	if user is not None:
		auth_login(request, user)	
		return redirect('/')
	else:
		return redirect('/login')	

def logoutHandle(request):
	logout(request)
	return redirect('/')


def register(request):
	if request.method == 'POST':
		form = UserCreationForm(request.POST) 
		if form.is_valid():
			new_user=form.save()
			return redirect('/users/success')	
	else:
		form = UserCreationForm()
	return render(request,'users/register.html',{'form':form})	 		

def success(request):
	return render(request,'users/success.html')

def checkUser(request):
	username = request.GET['value']
	try:
		user = User.objects.get(username=username)
		return HttpResponse('用户存在，请更换用户名')
	except User.DoesNotExist:
		return HttpResponse('用户名不存在，可以注册')

