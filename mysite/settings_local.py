

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

"""
# Moves an existing list setting value to a different position.
move = lambda n, k, i: s[n].insert(i, s[n].pop(s[n].index(k)))
# Add a value to the end of a list setting if not in the list.
append = lambda n, k: s[n].append(k) if k not in s[n] else None
# Add a value to the start of a list setting if not in the list.
prepend = lambda n, k: s[n].insert(0, k) if k not in s[n] else None
# Remove a value from a list setting if in the list.
remove = lambda n, k: s[n].remove(k) if k in s[n] else None

append("TEMPLATE_CONTEXT_PROCESSORS", cp)

"""
