from django.db import models
from django.core.urlresolvers import reverse

from embed_video.fields import EmbedVideoField


class Post(models.Model):
    title = models.CharField(max_length=50)
    video = EmbedVideoField(verbose_name='Embed URL', help_text='Enter the URL of the video, for example: "https://youtu.be/UsCQzTW0Fqt"')

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('posts:detail', kwargs={'pk': self.pk})
