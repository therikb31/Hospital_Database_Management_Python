def DELETE(lst):
    if lst==[]:
        print "Data Underflow"
    else:
        x=lst.pop(0)
        print "The element",x," was deleted successfully"
    return lst
def INSERT(lst):
    x=raw_input("Enter Element:")
    lst.insert(0,x)
    print "Element Inserted successfully"
    return lst
lst=[]
c=True
while(c):
    ch=int(input("1.INSERT\n2.DELETE\n3.Print\n4.Terminate\nEnter Choice:"))
    if ch==1:
        lst=INSERT(lst)
    elif ch==2:
        lst=DELETE(lst)
    elif ch==3:
        print lst
    elif ch==4:
        c=False
    else:
        print("Wrong Choice")

    
