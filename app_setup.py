import os
import getpass
from passlib.hash import pbkdf2_sha256
import shutil


def app_setup():
    pswd = getpass.getpass('Enter password:')
    pswd_hash = pbkdf2_sha256.hash(pswd)
    with open('settings.cfg', 'w+') as settings_file:
        settings_file.write("SECRET_KEY={}\n".format(os.urandom(24)))
        settings_file.write("PASSWD='{}'".format(pswd_hash))

    if os.path.exists('data'):
        shutil.rmtree('data')

    os.mkdir('data')
    db_choice = input(
        'Do you want to create an empty database (1) or use one with sample'
        'data (2) (1|2) ')
    while(True):
        if db_choice is '1':
            os.system('sqlite3 data/mms.sqlite < db-schema.sql')
            break
        elif db_choice is '2':
            os.system('sqlite3 data/mms.sqlite < sample_data/sample_data.sql')
            break
        else:
            print('Invalid input.')
            db_choice = input(
                'Do you want to create an empty database (1) or use one with '
                'sample data (2) (1|2) ')


if __name__ == '__main__':
    app_setup()
