# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0005_posts_optionalimage'),
    ]

    operations = [
        migrations.RenameField(
            model_name='posts',
            old_name='heroimage',
            new_name='heroimages',
        ),
    ]
