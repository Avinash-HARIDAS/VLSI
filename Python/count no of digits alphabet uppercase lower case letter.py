str1="Hello 1972 PythOn"
lw_count=0
up_count=0
alpha_count=0
for char in str1:
    if char.islower(): #in chr[97:122:1]:
        lw_count+=1
    elif char.isupper():
        up_count+=1
    if char.isalpha():
        alpha_count+=1    

print("lower case",lw_count)
print("upper case",up_count)
print("alpha case",alpha_count)

