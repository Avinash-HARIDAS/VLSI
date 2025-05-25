#area
print("1.rectangle")
print("2.circle")
print("3.square")
print("4.triangle")
char=int(input("enter the choice"))
if char==1:
    l=int(input("enter the length"))
    b=int(input("enter the breadth"))
    print("area of reactangle is ",l*b)
elif char==2:
    r=int(input("radius of circle"))
    print("area of circle is ",r*r)
elif char==3:
    l=int(input("enter the length"))
    print("area of square ",l*l)
elif char==4:
     h=int(input("enter the height"))
     b=int(input("enter the breadth"))
     print("quotient is ",1/2*b*h)
    

