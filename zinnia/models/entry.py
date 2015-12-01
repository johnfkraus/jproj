"""Entry model for Zinnia"""
from zinnia.settings import ENTRY_BASE_MODEL
from zinnia.models_bases import load_model_class
# from django.core.urlresolvers import reverse
# from django.db import models
# from embed_video.fields import EmbedVideoField


class Entry(load_model_class(ENTRY_BASE_MODEL)):
    """
    The final Entry model based on inheritence.
    """
    # video = EmbedVideoField(blank=True, null=True, verbose_name='Embed URL', help_text='Enter the URL of the video, for example: "https://youtu.be/UsCQzTW0Fqt"')

    # def get_absolute_url(self):
    #    return reverse('entry:detail', kwargs={'pk': self.pk})
