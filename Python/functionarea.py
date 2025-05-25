def areaofrectangle(length,breadth):
    return length*breadth
def areaofcircle(radius):
    return 3.14*radius**2


print("enter the choice")
print("1.area of rect")
print("2.area of circle")
choice=int(input("enter the choice"))

if choice==1:
    length=int(input("enter  length"))
    breadth=int(input("enter  breadth"))
    print("area of rect is",areaofrectangle(length,breadth))
        
    
elif choice==2:
    radius=int(input("enter the radius"))
    print("area of circle",areaofcircle(radius))
        
    
else:
    
    
    print("invalid")
        
