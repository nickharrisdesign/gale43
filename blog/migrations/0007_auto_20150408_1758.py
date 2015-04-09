# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0006_auto_20150408_1757'),
    ]

    operations = [
        migrations.RenameField(
            model_name='posts',
            old_name='heroimages',
            new_name='image1',
        ),
    ]
