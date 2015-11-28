# jproj/mysite/settings_mysql.py
"""
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'OPTIONS': {
            'read_default_file': 'my.cnf',
        },
    }
}
"""

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


DATABASES_SQLITE3 = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(settings.BASE_DIR, 'db.sqlite3'),
    }
}


DATABASES_MYSQL = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'jproj',
        'USER': 'root',
        'PASSWORD': 'wELCOME2!',
        # 'HOST': 'localhost',   # Or an IP Address that your DB is hosted on
        # 'PORT': '3306',
    }
}


import subprocess
# import sys


def run_command(command):
    p = subprocess.Popen(command,
                         stdout=subprocess.PIPE,
                         stderr=subprocess.STDOUT)
    return iter(p.stdout.readline, b'')


def check_envir(test):
    """if uname -a returns a string containing localhost, use sqlite3, otherwise use mysql
    on sourselair uname -a returns:
    Linux ebe41dcd98db 3.13.0-46-generic #79-Ubuntu SMP Tue Mar 10 20:06:50 UTC 2015 x86_64 x86_64 x86_64 GNU/Linux
    on local machine rhel 7, uname -a returns: Linux localhost.localdomain 3.10.0-229.20.1.el7.x86_64 #1 SMP Tue Nov 3 19:10:07 UTC 2015 x86_64 x86_64 x86_64 GNU/Linux"""
    command = 'uname -a'.split()
    target = 'localhost'
    for line in run_command(command):
        print('uname -a returned:', str(line))
        if target not in str(line) or test:
            print(target, 'not found', 'using mysql database')
            DATABASES['default'] = {
                'ENGINE': 'django.db.backends.mysql',
                'NAME': 'jproj',
                'USER': 'root',
                'PASSWORD': 'wELCOME2!',
                # 'HOST': 'localhost',   # Or an IP Address that your DB is hosted on
                # 'PORT': '3306',
            }
        else:
            print(target, 'found', '; using sqlite database')


check_envir(False)
