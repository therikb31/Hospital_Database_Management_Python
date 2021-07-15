def check(ch):
    b=False
    lst=["a","e","i","o","u","A","E","I","O","U"]
    for i in lst:
        if ch==i:
            b=True
    return b
r=open("Vowel.txt","w")
st=raw_input("Enter String:")
for a in st:
    if check(a):
        r.write(a)
r.close()
