# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-12-12 06:06
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('repository', '0007_auto_20181212_1213'),
    ]

    operations = [
        migrations.AlterField(
            model_name='configtype',
            name='allocation',
            field=models.TextField(max_length=64, null=True, verbose_name='对应配置'),
        ),
        migrations.AlterField(
            model_name='configtype',
            name='title',
            field=models.CharField(max_length=64, verbose_name='配置名称'),
        ),
    ]
