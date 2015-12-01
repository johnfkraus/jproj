# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import embed_video.fields


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Post',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, verbose_name='ID', auto_created=True)),
                ('title', models.CharField(max_length=50)),
                ('video', embed_video.fields.EmbedVideoField(help_text='Enter the URL of the video, for example: "https://youtu.be/UsCQzTW0Fqt"', verbose_name='Embed URL')),
            ],
        ),
    ]
