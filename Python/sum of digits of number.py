n=int(input("enter the number"))
result=0
while n>0:
    d=n%10
    result+=d
    n=n//10
print("result",result)

