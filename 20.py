import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",passwd="12345",database="Rik")
mycursor=mydb.cursor()
ch=int(input("Search according to the following Criteria\n1.Code\n2.Name\n3.Price(Range)\n4.Author Name\nEnter Choice:"))
if ch==1:
    code=raw_input("Enter Book Code:")
    sql="Select * from Book where Code="+"'"+code+"'"
elif ch==2:
    name=raw_input("Enter Book Name:")
    sql="Select * from Book where Name="+"'"+name+"'"
elif ch==3:
    print "Enter the Price Ranging:-"
    lprice=raw_input("From:")
    uprice=raw_input("To:")
    sql="Select * from Book where Price Between "+lprice+" And "+uprice
elif ch==4:
    author=raw_input("Enter Book Author:")
    sql="Select * from Book where Author="+"'"+author+"'"
mycursor.execute(sql)
x=mycursor.fetchall()
if x==[]:
    print "Record Not Found"
for i in x:
    print i
    
