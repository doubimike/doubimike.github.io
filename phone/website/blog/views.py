#!/usr/bin/env python
#-*- coding:utf-8 -*-
from django.shortcuts import render
from blog.models import Blog,Category
from django.http import HttpResponse
from django.shortcuts import render
from django.shortcuts import render_to_response
from django.http import Http404
import json


# Create your views here.

def showCate(request,param1):
	thiscat = Category.objects.get(category=param1)	
	categorys  = Category.objects.all()
	year_list = []
	allblog_total = Blog.objects.all()
	for item in allblog_total:
		_year = item.pub_date.year
		if _year not in year_list:
			year_list.append(_year)


	return render(request,'blog/showbycat.html',{'categorys':categorys,'thiscat':thiscat,'year_list':year_list})

def blogList(request):
	blog_list = Blog.objects.all().order_by('-id')[1:21]
	categorys  = Category.objects.all()
	first_blog = 	Blog.objects.all().order_by('-id')[0]
	total_amount = len(Blog.objects.all())
	return render(request,'blog/blogList.html',{'blogs':blog_list,'categorys':categorys,'first_blog':first_blog,'total_amount':total_amount})

def blogShow(request,param): 
	try:
		blog = Blog.objects.get(id=param)
		context = {}
		context['blog_title']=blog.blog_title
		context['pub_date']=blog.pub_date
		context['blog_category']=blog.blog_category.category
		context['blog_author']=blog.blog_author
		context['blog_content']=blog.blog_content
	except:
		raise Http404	
	try:
		context['prevblog']= Blog.objects.get(id=int(param)-1)
	except:
		context['prevblog']=None	
	try:
		context['nextblog']= Blog.objects.get(id=int(param)+1)
	except:
		context['nextblog']=None
	return render(request,'blog/blogShow.html',context)

def showBytime(request,param1,param2):
	year = param1
	month = param2
	allblog =  Blog.objects.filter(pub_date__year=param1).filter(pub_date__month=param2).order_by('-id')
	blog_list = allblog[1:]
	# import pdb; pdb.set_trace()
	first_blog = allblog[0]
	total_amount = len(allblog)
	year_list = []

	
	allblog_total = Blog.objects.all()
	for item in allblog_total:
		_year = item.pub_date.year
		if _year not in year_list:
			year_list.append(_year)
	month_list = []
	month_year = Blog.objects.filter(pub_date__year=param1)
	for item in month_year:
		_month = item.pub_date.month
		if _month not in month_list:
			month_list.append(_month)

	# 下面开发上月下月导航功能
	# 全部年份列表已经出来 是   year_list,让其按大小排序
	# 判断是否有上个月 .sort()是从小到大排序
	month_list.sort()
	year_list.sort()
	print month_list.sort()
	# 先判断现在的月份在这个列表中的位置
	this_month = Blog.objects.filter(pub_date__year=param1).filter(pub_date__month=param2)[0].pub_date.month
	month_index = month_list.index(this_month) 
	this_year = Blog.objects.filter(pub_date__year=param1)[0].pub_date.year
	year_index = year_list.index(this_year)
	nextmonth = 0
	prevmonth = 0

	lastmonth_year_index = year_index
	if month_index == 0 and year_index == 0:
		prevmonth = 0
	if month_index == 0 and year_index != 0:
		prevyearblog = Blog.objects.filter(pub_date__year=year_list[year_index-1])
		m2list= []
		for x in prevyearblog:
			_month2 = x.pub_date.month
			if _month2 not in m2list:
				m2list.append(_month2)
		m2list.sort()		
		prevmonth = m2list[-1]
		lastmonth_year_index = year_index - 1
	if month_index != 0:
		prevmonth = month_list[month_index -1]

	yearyear = year_list[lastmonth_year_index]
		
	# import pdb; pdb.set_trace()
	nextmonth_year_index = year_index
	# 下面开发下个月的导航
	if month_index == len(month_list)-1 and year_index == len(year_list) - 1:
		nextmonth = 0
	if  month_index == len(month_list)-1 and year_index != len(year_list) - 1:
		nextyearblog = Blog.objects.filter(pub_date__year=year_list[year_index+1])
		m3list= []
		for y in nextyearblog:
			_month3 = y.pub_date.month
			if _month3 not in m3list:
				m3list.append(_month3)
		m3list.sort()		
		nextmonth = m3list[0]
		nextmonth_year_index = year_index + 1
	if month_index != len(month_list)-1:
		nextmonth = month_list[month_index +1]
	# if month_index == 0 and 

		
	if nextmonth_year_index == year_index:
		nextmonthyear = year_list[year_index]
	if nextmonth_year_index != year_index:	 
		nextmonthyear = year_list[nextmonth_year_index]
	# 

	return render(request,'blog/showbytime.html',{'blogs':blog_list,'total_amount':total_amount,'year':year,'month':month,'first_blog':first_blog,"year_list":year_list,"month_list":month_list,'prevmonth':prevmonth,'yearyear':yearyear,'nextmonth':nextmonth,'nextmonthyear':nextmonthyear})

def getmonth(request):
	year = request.GET['year']
	month_list = []
	month_year = Blog.objects.filter(pub_date__year=year)
	for item in month_year:
		_month = item.pub_date.month
		if _month not in month_list:
			month_list.append(_month)
	month_list.sort()	
	# import pdb; pdb.set_trace()	
	return HttpResponse(json.dumps(month_list,ensure_ascii=False))		
