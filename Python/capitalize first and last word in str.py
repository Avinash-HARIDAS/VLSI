# Take input from the user
str1 = input("Enter a string: ")

# Check if the string is not empty
if len(str1) > 1:
    result = str1[0].upper() + str1[1:-1] + str1[-1].upper()
elif len(str1) == 1:
    result = str1.upper()  # If the string has only one character, capitalize it
else:
    result = ""  # Handle empty string

print("Modified String:", result)
