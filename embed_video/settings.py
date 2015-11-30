print('line 3 hello from video/embed_video/settings.py')

from django.conf import settings


EMBED_VIDEO_BACKENDS = getattr(settings, 'EMBED_VIDEO_BACKENDS', (
    'embed_video.backends.YoutubeBackend',
    'embed_video.backends.VimeoBackend',
    'embed_video.backends.SoundCloudBackend',
))
""" :type: tuple[str] """

EMBED_VIDEO_TIMEOUT = getattr(settings, 'EMBED_VIDEO_TIMEOUT', 10)
""" :type: int """

EMBED_VIDEO_YOUTUBE_DEFAULT_QUERY = \
    getattr(settings, 'EMBED_VIDEO_YOUTUBE_DEFAULT_QUERY', 'wmode=opaque')
""" :type: django.db.models.QuerySet | str """
