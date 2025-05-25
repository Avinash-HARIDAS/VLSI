#calculator
print("1.addition")
print("2.subtraction")
print("3.multiplication")
print("4.division")
char=int(input("enter the choice"))
a=int(input("enter the number"))
b=int(input("enter the number"))
if char==1:
    print("sum is ",a+b)
elif char==2:
    print("difference is ",a-b)
elif char==3:
    print("product is ",a*b)
elif char==4:
    print("quotient is ",a/b)
    

