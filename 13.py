#13
lst=[]
for i in range(0,10):
    x=int(input("Enter Number:"))
    lst.append(x)
for i in range(10):
    for j in range(0,9-i):
        if lst[j]>lst[j+1]:
            lst[j],lst[j+1]=lst[j+1],lst[j]    
for i in lst:
    print i
