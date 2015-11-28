
# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

if DEBUG:
    ALLOWED_HOSTS = [
        'johnfkraus.pythonanywhere.com',  # Allow domain and subdomains
        'http://localhost:8000',
        '*.apps.lair.io.',
    ]

SITE_ID = 1
# from django.conf import settings

# INSTALLED_APPS = settings.INSTALLED_APPS + ('django_extensions',)

MEDIA_URL = '/media/'
