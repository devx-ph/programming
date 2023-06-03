import mysql.connector

# Database connection 
dataBase = mysql.connector.connect(
    host = "127.0.0.1",
    user = "root",
    passwd = ""
)

# Prepare a cursor object
cursorObject = dataBase.cursor()

# Create a database 
cursorObject.execute("CREATE DATABASE devxco")
print("All Done!")