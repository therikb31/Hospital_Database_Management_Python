import mysql.connector,prettytable as P
def HomePage(mycursor):
    print "************Welcome to our HomePage!!*************\n1.To Log In as Admin\n2.To Continue as a Guest"
    print "3.Exit\nEnter your Choice:",
    ch=int(input())
    if ch==1:
        check(mycursor)
    elif ch==2:
        guest(mycursor)
    elif ch==3:
        print "Thanks for Visiting our Page!!" 
    else:
        print "Wrong Choice!!You are being redirected to the Homepage... ... ..."
        HomePage(mycursor)    
def check(mycursor):
    uid=raw_input("EmployeeID:")  
    p=int(input("Password:"))    
    if p==12345 and len(uid)==3:
        sql="Select * from Employee where eid="+"'"+uid+"'"
        mycursor.execute(sql)
        x=mycursor.fetchall()
        name=x[0][1]
        print "**************Welcome "+name+"*****************"
        admin(mycursor)
    else:
        print "Incorrect Employee ID or Password"
def guest(mycursor):
    print("**************************************************")
    print "Enter the following\n1.To Register a new Patient\n2.To Fix an appointment with a Doctor"
    print "3.For Billing Enquiry of existing patient\n4.Exit\nEnter your Choice:",
    ch=int(input())
    if ch==1:
        AddPatient(mycursor)
        guest(mycursor)
    elif ch==2:
        Appointment(mycursor)
        guest(mycursor)
    elif ch==3:
        Bill(mycursor)
        guest(mycursor)
    elif ch==4:
        print "Thanks for visiting our Page!!"
    else:
        print "Wrong Choice"
def Appointment(mycursor):
    pid=raw_input("Enter your Patient Id:")
    print "Choose the Department Of the Doctor\n1.General Physician\n2.Cardiologist\n3.Neurologist\n4.Gynecologist"
    print "5.Orthologist\n6.ENT Specialist\n7.Dermatologist\n8.Dentist\n9.Dietitian\n10.Psychologist\nEnter your Choice:",
    ch=int(input())
    dlist1=["General Physician","Cardiologist","Neurologist","Gynecologist","Orthologist","ENT Specialist","Dermatologist"]
    dlist2=["Dentist","Dietitian","Psychologist"]
    dlist=dlist1+dlist2
    if ch>0 and ch<11:
        Dpt=dlist[ch-1]
    else:
        print "Wrong Choice" 
    sql1="Select * from Doctor where Specialist='"+Dpt+"'"
    mycursor.execute(sql1)
    x=mycursor.fetchall()
    t = P.PrettyTable(['Doctor ID', 'Name','Specialist','Experiance','Charge','Timing'])
    for i in range(len(x)):
        t.add_row(x[i])
    print t
    did=raw_input("Please enter the Doctor Id of your preferred Doctor:")
    sql="insert into Appointment(PID,DID) values ('{}','{}')".format(pid,did)
    mycursor.execute(sql)
    mydb.commit()
    print "Your Appointment has been placed"
def Extract(mycursor,table):
    if table=="Registration":
        sql="Select * from Registration"
    if table=="Employee":
        sql="Select * from Employee"
    mycursor.execute(sql)
    x=mycursor.fetchall()
    l=len(x)
    lst=x[l-1][0]
    dig=int(lst[2])+1
    pid=lst[:2]+str(dig)
    return pid
def AddPatient(mycursor):
    print "Enter the details of the Employee:-"
    name=raw_input("Enter Name:")
    age=int(input("Enter Age:"))
    sex=raw_input("Enter Gender:")
    ph=raw_input("Enter Phone Number:")
    pid=Extract(mycursor,"Registration")
    sql="Insert into Registration(pid,name,age,gender,PhNumber) Values ('{}','{}',{},'{}','{}')".format(pid,name,age,sex,ph)
    mycursor.execute(sql)
    mydb.commit()
    print "Record inserted"
    print "Please note that your Patient Id is:"+pid
def Bill(mycursor):
    pid=raw_input("Enter Patient Id of the Patient:")
    sql="select R.Name,D.Name,Specialist,Charge from Appointment as A,Doctor as D,Registration as R where D.DID=A.DID and R.PID=A.PID and R.PID="+"'"+pid+"'"
    mycursor.execute(sql)
    x=mycursor.fetchall()
    t = P.PrettyTable(['Patient Name','Treated By Doctor','Specialist','Charges(in Rs)'])
    for i in range(len(x)):
        t.add_row(x[i])
    print t
def admin(mycursor):
    print("**************************************************")
    ch=int(input("1.Add New Employee\n2.View Employee Info\n3.Remove Employee\n4.Update Employee Info\n5.Exit\nEnter your Choice:"))
    if ch==1:
        AddEmp(mycursor)
        admin(mycursor)
    elif ch==2:
        ViewEmp(mycursor)
        admin(mycursor)
    elif ch==3:
        DelEmp(mycursor)
        admin(mycursor)
    elif ch==4:
        UpdateEmp(mycursor)
        admin(mycursor)
    elif ch==5:
        print "Thanks for visiting our homepage!!"
    else:
        print "Wrong Choice!!"
        admin(mycursor)
def AddEmp(mycursor):
    print "Enter the details of the Employee:-"
    name=raw_input("Enter Name:")
    sex=raw_input("Enter Gender:")
    department=raw_input("Enter Department:")
    eid=Extract(mycursor,"Employee")
    sql="Insert into Employee(eid,name,sex,department) Values ('{}','{}','{}','{}')".format(eid,name,sex,department)
    mycursor.execute(sql)
    mydb.commit()
    print "Record inserted"
    print "Please note that your Employee Id is:"+eid
def ViewEmp(mycursor):
    eid=raw_input("Enter Employee Id of the Employee:")
    sql="Select * from Employee where EID="+"'"+eid+"'"
    mycursor.execute(sql)
    x=mycursor.fetchall()
    print "Details of the following employee are:"
    t=P.PrettyTable(["Employee ID","Name","Gender","Department"])
    for i in range (len(x)):
        t.add_row(x[i])
    print t
def DelEmp(mycursor):
    eid=raw_input("Enter Employee Id of the Employee:")
    sql="Delete from employee where eid='"+eid+"'"
    mycursor.execute(sql)
    mydb.commit()
    print "The Following record has been removed successfuly"
def UpdateEmp(mycursor):
    ch=int(input("Update the following:-\n1.Name\n2.Sex\n3.Department\nEnter your choice:"))
    eid=raw_input("Enter Employee Id of the Record to be Updated:")
    if ch==1:
        name=raw_input("Enter New Name:")
        sql="Update Employee Set Name='"+name+"' where EID='"+eid+"'"
    elif ch==2:
        sex=raw_input("Enter New Gender:")
        sql="Update Employee Set Sex='"+name+"' where EID='"+eid+"'"
    elif  ch==3:
        dept=raw_input("Enter New Department:")
        sql="Update Employee Set Department='"+dept+"' where EID='"+eid+"'"
    else:
        print "Wrong Choice!!"
    mycursor.execute(sql)
    mydb.commit()
    print("1,Record(s) have been Updated")

mydb=mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="12345",
    database="ABC_Hospital")
mycursor=mydb.cursor()
HomePage(mycursor)


        
