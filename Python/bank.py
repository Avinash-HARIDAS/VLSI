balance=100000
def deposit():
    global balance
    amount=int(input("enter the amount"))
    balance+=amount
    print("success")
def withdraw():
    global balance
    amount=int(input("enter the amount"))
    balance-=amount
    print("success")
def display():
    print("balance now",balance)