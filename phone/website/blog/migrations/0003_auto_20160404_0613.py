# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0002_auto_20160403_1121'),
    ]

    operations = [
        migrations.CreateModel(
            name='Author',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=30)),
                ('email', models.EmailField(max_length=254, blank=True)),
                ('website', models.URLField(blank=True)),
            ],
        ),
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('category', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='Tag',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('tag', models.CharField(max_length=20)),
            ],
        ),
        migrations.AlterField(
            model_name='blog',
            name='blog_author',
            field=models.ForeignKey(to='blog.Author'),
        ),
        migrations.AlterField(
            model_name='blog',
            name='blog_category',
            field=models.ForeignKey(to='blog.Category'),
        ),
        migrations.AlterField(
            model_name='blog',
            name='blog_content',
            field=models.TextField(),
        ),
        migrations.AddField(
            model_name='blog',
            name='tags',
            field=models.ManyToManyField(to='blog.Tag', blank=True),
        ),
    ]
