#!/usr/bin/env python
# -*- coding: utf-8 -*- 

from django.db import models
from django.utils.encoding import python_2_unicode_compatible

# Create your models here.
class Blog(models.Model):
    blog_title = models.CharField(max_length=200)
    blog_content = models.CharField(max_length=800)
    pub_date = models.DateTimeField('date published')
    blog_author = models.CharField(max_length=200,default='DoubiMike')
    blog_category = models.CharField(max_length=200,default='无分类')
    def __str__(self):
    	return self.blog_title
