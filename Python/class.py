class employee:
    def __init__(self,name,age,salary):
        self.name=name
        self.age=age
        self.salary=salary
    def display(self):
        print(f"name:{self.name} age:{self.age} salary:{self.salary}")
e1=employee("avi",22,10000000000)
print(e1.name)
e1.display()
