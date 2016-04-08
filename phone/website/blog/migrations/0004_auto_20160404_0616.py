# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0003_auto_20160404_0613'),
    ]

    operations = [
        migrations.AlterField(
            model_name='category',
            name='category',
            field=models.CharField(default=b'\xe6\x9c\xaa\xe5\x88\x86\xe7\xb1\xbb', max_length=20),
        ),
    ]
