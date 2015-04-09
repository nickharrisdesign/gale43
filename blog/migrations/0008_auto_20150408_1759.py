# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0007_auto_20150408_1758'),
    ]

    operations = [
        migrations.RenameField(
            model_name='posts',
            old_name='optionalimage',
            new_name='image2',
        ),
    ]
