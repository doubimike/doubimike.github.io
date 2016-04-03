# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='blog',
            name='blog_author',
            field=models.CharField(default=b'DoubiMike', max_length=200),
        ),
        migrations.AddField(
            model_name='blog',
            name='blog_category',
            field=models.CharField(default=b'\xe6\x97\xa0\xe5\x88\x86\xe7\xb1\xbb', max_length=200),
        ),
    ]
