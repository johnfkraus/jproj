import subprocess
import sys


def run_command(command):
    p = subprocess.Popen(command,
                         stdout=subprocess.PIPE,
                         stderr=subprocess.STDOUT)
    return iter(p.stdout.readline, b'')


def check_envir():
    """if uname -a returns a string containing localhost, use sqlite3, otherwise use mysql
    on sourselair uname -a returns:
    Linux ebe41dcd98db 3.13.0-46-generic #79-Ubuntu SMP Tue Mar 10 20:06:50 UTC 2015 x86_64 x86_64 x86_64 GNU/Linux
    on local machine rhel 7, uname -a returns: Linux localhost.localdomain 3.10.0-229.20.1.el7.x86_64 #1 SMP Tue Nov 3 19:10:07 UTC 2015 x86_64 x86_64 x86_64 GNU/Linux"""
    command = 'uname -a'.split()
    target = 'localhost'
    for line in run_command(command):
        print('uname -a returned:', str(line))
        if target in str(line):
            print(target, 'found')
            import_filename = 'mysite.settings_sqlite'
        else:
            import_filename = 'mysite.settings_mysql'
        import_localdb_settings(import_filename)


def import_localdb_settings(import_filename):
    try:
        from import_filename import *
        print(mysite.my_utils.module_path(), 'line', mysite.my_utils.lineno(), import_filename, 'has been imported')
    except ImportError:
        sys.stderr.write('WARNING: ' + import_filename + ' No local settings found.\n\n')
