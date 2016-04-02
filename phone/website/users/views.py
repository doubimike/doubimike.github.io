from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def login(request):
	return HttpResponse('<form role="form" action="/login" method="post">'+
      '<label>Username</label>'+
      '<input type="text" name="username">'+
      '<label>Password</label>'+
      '<input name="password" type="password">'+
      '<input type="submit" value="Submit">'+'</form>')