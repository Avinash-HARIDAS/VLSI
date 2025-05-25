a=int(input("enter the angles"))
b=int(input("enter the angles"))
c=int(input("enter the angles"))
if a==b==c:
    print("equilateral triangle")
elif a==b or a==c or c==b:
    print("isocless triangle")
else:
    print("scalene triangle")
