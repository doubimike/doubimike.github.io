# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0004_auto_20160404_0616'),
    ]

    operations = [
        migrations.AlterField(
            model_name='blog',
            name='blog_category',
            field=models.ForeignKey(default=b'\xe6\x9c\xaa\xe5\x88\x86\xe7\xb1\xbb', to='blog.Category'),
        ),
        migrations.AlterField(
            model_name='category',
            name='category',
            field=models.CharField(max_length=20),
        ),
    ]
