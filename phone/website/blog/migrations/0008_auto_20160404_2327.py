# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import tinymce.models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0007_auto_20160404_2108'),
    ]

    operations = [
        migrations.AlterField(
            model_name='blog',
            name='blog_content',
            field=tinymce.models.HTMLField(),
        ),
    ]
