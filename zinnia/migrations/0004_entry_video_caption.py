# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('zinnia', '0003_entry_video'),
    ]

    operations = [
        migrations.AddField(
            model_name='entry',
            name='video_caption',
            field=models.TextField(help_text="Video's caption.", verbose_name='caption', blank=True),
        ),
    ]
