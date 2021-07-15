def prime(n,i=2):
    if i==n-1:
        return 1
    if n%i==0:
        return 0
    return prime(n,i+1)
y=int(input("Enter Number:"))
x=prime(y)
if x==1:
    print "Prime"
else:
    print "Not prime"
