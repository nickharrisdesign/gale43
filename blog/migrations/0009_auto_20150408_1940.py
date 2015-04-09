# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0008_auto_20150408_1759'),
    ]

    operations = [
        migrations.AlterField(
            model_name='posts',
            name='image1',
            field=models.ImageField(default='', upload_to='/Users/Rusty Enchiladea/firstblog/static/images/heroimage/'),
        ),
        migrations.AlterField(
            model_name='posts',
            name='image2',
            field=models.ImageField(default='', upload_to='/Users/Rusty Enchiladea/firstblog/static/images/optional/'),
        ),
    ]
