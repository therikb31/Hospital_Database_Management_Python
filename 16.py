def POP(lst):
    if lst==[]:
        print "Data Overflow"
    else:
        x=lst.pop()
        print "The element ",x," was popped out successfully"
    return lst
def PUSH(lst):
    x=raw_input("Enter Element:")
    lst.append(x)
    print "Element appended successfully"
    return lst
lst=[]
c=True
while(c):
    ch=int(input("1.Push\n2.Pop\n3.Print\n4.Terminate\nEnter Choice:"))
    if ch==1:
        lst=PUSH(lst)
    elif ch==2:
        lst=POP(lst)
    elif ch==3:
        print lst
    elif ch==4:
        c=False
    else:
        print("Wrong Choice")

    
