st=raw_input("Enter a string:")
st=" "+st+" "
lst=[]
lt=[]
l=len(st)
lc=0
for i in range(l):
    if(st[i]==" "):
        for j in range(i+1,l):
            if(st[j]==" "):
                lst.append(st[i+1:j])
                break
        lt.append(lc)
        lc=0
    else:
        lc+=1
ind=lt.index(max(lt))
print "The longest word is:",lst[ind-1]

