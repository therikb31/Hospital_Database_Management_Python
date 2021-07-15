import mysql.connector
mydb=mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="12345",
    database="Rik")
mycursor=mydb.cursor()
code=raw_input("Enter Book Code:")
name=raw_input("Enter Book Name:")
price=int(input("Enter Book Cost:"))
author=raw_input("Enter Book Author:")
sql="Insert into Book(code,name,price,author)values('{}','{}',{},'{}')".format(code,name,price,author)
mycursor.execute(sql)
print (mycursor.rowcount,"Record(s) Inserted")
mydb.commit()
