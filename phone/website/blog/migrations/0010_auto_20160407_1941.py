# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import ckeditor.fields


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0009_files'),
    ]

    operations = [
        migrations.AlterField(
            model_name='blog',
            name='blog_content',
            field=ckeditor.fields.RichTextField(),
        ),
    ]
