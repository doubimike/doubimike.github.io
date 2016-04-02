from django.db import models

# Create your models here.
class Blog(models.Model):
    blog_title = models.CharField(max_length=200)
    blog_content = models.CharField(max_length=800)
    pub_date = models.DateTimeField('date published')
