# How to start a new django project
- Install a virtual environment
pip install virtualenv
- Create a directory where you want to store your project
mkdir <dir_name>
cd <dir_name>
- Create an environment
python -m venv <any_name>
- Activate the virtual environent
source <env_name/bin/activate>
- Install django
pip install django
- Install mysql 
pip install mysql
- Install mysql connector
pip install mysql-connector or mysql-connector-python

# Create a django project 
django-admin startproject <project_name>
cd <project_name>
- Create an app inside the <project_name> directory
python manage.py startapp <any_name>
- And open it on your text editor or IDE
(in my case it is) code .

# Change settings from setings.py inside the directory of <project_name>
- Add your app in INSTALLED_APPS
find INSTALLED_APPS and add your created app <app_name>
- Go down to DATABASES
since we are using mysql change "ENGINE": "django.db.backends.sqlite3" to "ENGINE": "django.db.backends.mysql"
- You can delete the line of code bellow "ENGINE" and add a name to your DATABASE
"NAME" : "<any_name>"
- Setup the user under the name of the database
"USER": "<your_username>"
- Setup the password under user
"PASSWORD": "<your_password>"
- Setup the host under password:
"HOST": "<your_host>"
- Setup the port under host
"PORT": "<your_port>"

# Setup the database name that you created
- Open your terminal and make sure you are inside of the <project_name> directory
- Create a file 
touch mydb.py (or any name you want)
- Inside mydb.py add this code

import mysql.connector
- Database connection 
dataBase = mysql.connector.connect(
    host = "<your_host>",
    user = "<your_user>",
    passwd = "<your_password>"
)
- Prepare a cursor object
cursorObject = dataBase.cursor()
- Create a database
- The name should match in settings.py DATABASES "NAME"
cursorObject.execute("CREATE DATABASE <name_of_your_database>")
print("All Done!")
- Run mydb.py in the terminal (make sure also you are in the right directory your <project_name> 
python mydb.py
- And run this also on terminal if mydb.py is OK
python manage.py migrate

# Create a super user 
- In the terminal run 
python manage.py createsuperuser

# Run the server
- In terminal run 
python manage.py runserver
- Check if server is OK 
<your_host>:8000

# Create migration and push into database
python manage.py makemigrations
- push created migration in database
python manage.py migrate

# Add / Register models to website admin (back-end)
- Open admin.py add the following
from .models import Record

admin.site.register(Record)
- Save the file and reload the admin page