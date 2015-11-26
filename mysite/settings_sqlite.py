# Database
# https://docs.djangoproject.com/en/1.8/ref/settings/#databases

import os
from django.conf import settings  # import the settings file


DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(settings.BASE_DIR, 'db.sqlite3'),
    }
}
