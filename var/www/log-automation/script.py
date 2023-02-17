from pydrive.auth import GoogleAuth
from pydrive.drive import GoogleDrive

gauth = GoogleAuth()
drive = GoogleDrive(gauth)

ACCESS_LOG_PATH = '/var/log/nginx/access.log'
ERROR_LOG_PATH = '/var/log/nginx/error.log'
FOLDER_ID = '1lJlOZia70XnZV8291NJFZs7pNSmfEHlV'

upload_file_list = [ACCESS_LOG_PATH, ERROR_LOG_PATH]
for upload_file in upload_file_list:
    gfile = drive.CreateFile({'parents': [{'id': FOLDER_ID}]})
    gfile.SetContentFile(upload_file)
    gfile.Upload()
