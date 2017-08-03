# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-08-03 00:12
from __future__ import unicode_literals

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0003_auto_20170802_1748'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='personal',
            name='username',
        ),
        migrations.AlterField(
            model_name='personal',
            name='fecha_creacion',
            field=models.DateTimeField(default=datetime.datetime(2017, 8, 3, 0, 12, 26, 395655, tzinfo=utc), verbose_name='dia_creado'),
        ),
    ]