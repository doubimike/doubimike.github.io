# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0006_auto_20160404_2103'),
    ]

    operations = [
        migrations.AlterField(
            model_name='blog',
            name='blog_author',
            field=models.ForeignKey(default=b'DoubiMike', to='blog.Author'),
        ),
        migrations.AlterField(
            model_name='blog',
            name='blog_category',
            field=models.ForeignKey(default=b'\xe6\x9c\xaa\xe5\x88\x86\xe7\xb1\xbb', to='blog.Category'),
        ),
    ]
