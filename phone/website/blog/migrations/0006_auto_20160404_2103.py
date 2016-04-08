# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0005_auto_20160404_0617'),
    ]

    operations = [
        migrations.AlterField(
            model_name='blog',
            name='blog_category',
            field=models.ForeignKey(to='blog.Category'),
        ),
        migrations.AlterField(
            model_name='blog',
            name='pub_date',
            field=models.DateTimeField(),
        ),
    ]
