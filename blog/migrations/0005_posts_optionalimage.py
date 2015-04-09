# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0004_auto_20150408_1753'),
    ]

    operations = [
        migrations.AddField(
            model_name='posts',
            name='optionalimage',
            field=models.ImageField(upload_to='static/images/optional/', default=''),
        ),
    ]
