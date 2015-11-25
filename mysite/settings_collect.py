""" you could copy the settings_generated.py file over this file. """
import sys
# import os
import mysite.my_utils

try:
    from mysite.settings_secret import *
except ImportError:
    sys.stderr.write("ERROR: No secret settings found. \n\n")
    sys.exit(1)


try:
    from mysite.settings_generated_max import *
except ImportError:
    sys.stderr.write("ERROR: No generated settings found. Please run 'make configure' first.\n\n")
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
    from mysite.settings_cryptoblog import *
except ImportError:
    sys.stderr.write("ERROR: No cryptoblog settings found. \n\n")
    sys.exit(1)


try:
    from mysite.settings_local import *
    print(mysite.my_utils.module_path(), 'line', mysite.my_utils.lineno(), 'settings_local imported')
except ImportError:
    sys.stderr.write("WARNING: No local settings found.\n\n")
    pass


try:
    print(mysite.my_utils.module_path(), 'line', mysite.my_utils.lineno(), 'DEBUG =', DEBUG)
except NameError:
    print(mysite.my_utils.module_path(), 'line', mysite.my_utils.lineno(), 'DEBUG is not defined')


try:
    print(mysite.my_utils.module_path(), 'line', mysite.my_utils.lineno(), 'SITE_ID =', SITE_ID)
except NameError:
    print(mysite.my_utils.module_path(), 'line', mysite.my_utils.lineno(), 'SITE_ID is not defined')
