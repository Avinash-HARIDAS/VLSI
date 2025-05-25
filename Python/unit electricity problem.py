unit=int(input("enter the unit used"))
if unit<=100:
    print("0 cost")
elif unit>100 and unit<=200:
    b=(unit-100)*5
    print("the cost is",b)
else:
    c=(100*5)+(unit-200)*10
    print("the cost is",c)
