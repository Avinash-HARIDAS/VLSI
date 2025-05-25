n=int(input("enter a num"))
result=n
rev=0
while n>0:
    rem=n%10
    rev=rev*10+rem
    n=n//10
    
if result==rev:
    print("palindrome")
else:
    print("not")
        
