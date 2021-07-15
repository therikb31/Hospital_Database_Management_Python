import mysql.connector
mydb=mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="12345",
    database="Rik")
mycursor=mydb.cursor()
sql="Select * from Book"
mycursor.execute(sql)
x=mycursor.fetchall()
for i in x:
    print i
