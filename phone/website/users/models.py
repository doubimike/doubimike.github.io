#!/usr/bin/env python
# -*- coding: utf-8 -*- 

from django.db import models
from django.utils.encoding import python_2_unicode_compatible



# Create your models here.
class User(models.Model):
    username = models.CharField(max_length=20)
    password = models.CharField(max_length=20)
    email = models.EmailField()
    nickname = models.CharField(max_length=20,default='hello world')
    def __str__(self):
    	return self.username
