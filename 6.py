def palindrom(x):
    n=x
    s=0
    while(x>0):
        r=x%10
        x=x/10
        s=s*10+r
    if s==n:
        print "Palindrom"
    else:
        print "Not Palindrom"
x=int(input("Enter number:"))
palindrom(x)
    
