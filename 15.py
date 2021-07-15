lst=[]
lstr=[]
for i in range(0,3):
    for j in range(0,3):
        print "Enter elements at position(",i+1,",",j+1,"):",
        x=raw_input()
        lstr.append(x)
    lst.append(lstr)
    lstr=[]
print lst
