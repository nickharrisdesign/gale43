# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0003_auto_20150408_1243'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='posts',
            name='image1',
        ),
        migrations.AddField(
            model_name='posts',
            name='heroimage',
            field=models.ImageField(upload_to='static/images/heroimage/', default=''),
        ),
    ]
