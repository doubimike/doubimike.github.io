from django.shortcuts import render
from django.http import HttpResponse
from django.core.context_processors import csrf
from django.contrib.auth.forms import UserCreationForm

from users.models import User
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

def diff_response(request):
    if request.user.is_authenticated():
        content = "<p>my dear user</p>"
    else:
        content = "<p>you wired stranger</p>"
    return HttpResponse(content)

def success(request):
	return render(request,'users/success.html')
