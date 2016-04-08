#!/usr/bin/env python
# -*- coding: utf-8 -*- 

from django.db import models
from django.utils.encoding import python_2_unicode_compatible
from ckeditor.fields import RichTextField


# Create your models here.
class Tag(models.Model):
	tag = models.CharField(max_length=20)
	def __unicode__(self):
		return self.tag
		

class Author(models.Model):
	name = models.CharField(max_length=30)
	email = models.EmailField(blank=True)
	website = models.URLField(blank=True)
	def __unicode__(self):
		return self.name

class Category(models.Model):
	category = models.CharField(max_length=20)
	def __unicode__(self):
		return self.category

class Blog(models.Model):
    blog_title = models.CharField(max_length=200)
    blog_content = RichTextField()
    pub_date = models.DateTimeField()
    blog_author = models.ForeignKey(Author,default='DoubiMike')
    blog_category = models.ForeignKey(Category,default='未分类')
    tags = models.ManyToManyField(Tag,blank=True)
    def __unicode__(self):
    	return self.blog_title

class Files(models.Model):
	file = models.FileField(upload_to='upload/')




		