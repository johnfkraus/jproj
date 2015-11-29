"""
Django settings for mysite project.

Generated by 'django-admin startproject' using Django 1.8.7.

For more information on this file, see
https://docs.djangoproject.com/en/1.8/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/1.8/ref/settings/
"""

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
import os
import sys
import mysite.my_utils

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.8/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!

# SECURITY WARNING: don't run with debug turned on in production!
# DEBUG = True   see settings_local.py

# ALLOWED_HOSTS = []


# Application definition

INSTALLED_APPS = (
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django.contrib.sites',
    'django_comments',
    'mptt',
    'tagging',
    'zinnia',
    'jour',
    'django_extensions',
)

MIDDLEWARE_CLASSES = (
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.auth.middleware.SessionAuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'django.middleware.security.SecurityMiddleware',
)

ROOT_URLCONF = 'mysite.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [
            # allauth templates: you could copy this directory into your
            # project and tweak it according to your needs
            # os.path.join(PROJECT_ROOT, 'templates', 'uniform', 'allauth'),
            # example project specific templates
            # os.path.join(BASE_DIR, 'allauthdemo', 'templates', 'plain', 'example'),
            # os.path.join(BASE_DIR, 'allauthdemo', 'templates', 'bootstrap', 'allauth'),
            # os.path.join(BASE_DIR, 'allauthdemo', 'templates', 'allauth'),
            # os.path.join(BASE_DIR, 'allauthdemo', 'templates'),
            os.path.join(BASE_DIR, 'zinnia', 'templates'),
            os.path.join(BASE_DIR, 'templates'),
            os.path.join(BASE_DIR, 'jour', 'templates'),
        ],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors':
            [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'django.template.context_processors.i18n',
                'zinnia.context_processors.version',  # Optional
                'jour.context_processors.app_title',
            ],
        },
    },
]

WSGI_APPLICATION = 'mysite.wsgi.application'

# Database
# https://docs.djangoproject.com/en/1.8/ref/settings/#databases
"""
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}
"""

# Internationalization
# https://docs.djangoproject.com/en/1.8/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'America/New_York'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.8/howto/static-files/

STATIC_URL = '/static/'

STATIC_ROOT = os.path.join(BASE_DIR, 'static')  # required by pythonanywhere

SITE_ID = 1

APP_TITLE = 'The Journalism Project'  # SITE_TITLE, SITE_NAME

DEFAULT_CONTACT = 'johnkraus3@gmail.com'

try:
    from mysite.settings_secret import *
except ImportError:
    sys.stderr.write("ERROR: No secret settings found. \n\n")
    sys.exit(1)


try:
    from mysite.settings_email import *
except ImportError:
    sys.stderr.write("ERROR: No email settings found. \n\n")
    sys.exit(1)


try:
    from mysite.settings_verification import *
except ImportError:
    sys.stderr.write("ERROR: No verification settings found.\n\n")
    sys.exit(1)


try:
    from mysite.settings_local import *
    print(mysite.my_utils.module_path(), 'line', mysite.my_utils.lineno(), 'settings_local has been imported')
except ImportError:
    sys.stderr.write("WARNING: No local settings found.\n\n")
    pass


try:
    from mysite.settings_db import *
    print(mysite.my_utils.module_path(), 'line', mysite.my_utils.lineno(), 'settings_db has been imported')
except ImportError:
    sys.stderr.write("WARNING: No db settings found.\n\n")


try:
    print(mysite.my_utils.module_path(), 'line', mysite.my_utils.lineno(), 'DEBUG =', DEBUG)
except NameError:
    print(mysite.my_utils.module_path(), 'line', mysite.my_utils.lineno(), 'DEBUG is not defined')


try:
    print(mysite.my_utils.module_path(), 'line', mysite.my_utils.lineno(), 'SITE_ID =', SITE_ID)
except NameError:
    print(mysite.my_utils.module_path(), 'line', mysite.my_utils.lineno(), 'SITE_ID is not defined')


try:
    print(mysite.my_utils.module_path(), 'line', mysite.my_utils.lineno(), 'site_url =', site_url)
except NameError:
    print(mysite.my_utils.module_path(), 'line', mysite.my_utils.lineno(), 'site_url is not defined')
