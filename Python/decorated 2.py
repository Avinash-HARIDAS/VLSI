def make_pretty(func):
    def inner():
        print("i got  decorated")
        func()
    return inner
def ordinary():
    
    print("iam ordinary")
decorated_func=make_pretty(ordinary)
decorated_func()
