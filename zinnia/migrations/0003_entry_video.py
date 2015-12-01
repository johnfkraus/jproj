# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import embed_video.fields


class Migration(migrations.Migration):

    dependencies = [
        ('zinnia', '0002_lead_paragraph_and_image_caption'),
    ]

    operations = [
        migrations.AddField(
            model_name='entry',
            name='video',
            field=embed_video.fields.EmbedVideoField(null=True, verbose_name='Embed URL', blank=True, help_text='Enter the URL of the video, for example: "https://youtu.be/UsCQzTW0Fqt"'),
        ),
    ]
