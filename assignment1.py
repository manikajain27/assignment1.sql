##Question 1: Write a Python program to print "Hello, World!".
print("hello,world!")

##Question 2: Write a Python program that takes a user input and prints it.
user_input = input("what is your name?")
print("your input:",user_input)

##Question 3: Write a Python program check if a number is positive, negative, or zero.
a=90
if a>0:
    print("the number is positive")
elif a<0:
    print("the number is negative")
else :
    print("the number is zero")

##Question 4: Write a Python program to find the largest of three numbers.
num1 = float(input("enter first number:"))
num2 = float(input("enter second number:"))
num3 = float(input("enter third number:"))

if (num1>num2) and (num1>num3):
    largest = num1
elif (num2>num1) and (num2>num3):
    largest = num2 
else:
    largest = num3

print("the largest number is:", largest)

##Question 5: Write a Python program to calculate the factorial of a number.
def factorial(n):
    if n == 0:
        return 1
    else:
        return n*factorial(n-1)

num = int(input("Enter a number: "))
print(f"The factorial of {num} is {factorial (num)}")

##Question 6:Create variables of different data types: integer, float, string, and boolean. Print their values and types.

int_var= 3
str_name = "manika"
bool_value = True
float_var = 31.5

print("int_var:",int_var,type(int_var))
print("str_name:",str_name,type(str_name))
print("bool_vale:",bool_value,type(bool_value))
print("float_var:",float_var,type(float_var))

##Question 7: Write a Python program to swap the values of two variables.
a = 4
b = 5
print(F"before swap a = {a}, b = {b}")

a,b = b,a
print(f"after swap a={a},b={b}")

##Question 8: Write a Python program to convert Celsius to Fahrenheit.
celsius = float(input("Enter temperature in Celsius: "))
fahrenheit = (celsius * 9/5) + 32
print(f"{celsius}°C is equal to {fahrenheit}°F")

#Question 9: Write a Python program to concatenate two strings.
string1 = "hello"
string2 = "world"
concatenated_string = string1 + " " + string2
print(concatenated_string)

#Question 10: Write a Python program to check if a variable is of a specific data type.
var=10.5
if isinstance(var,float):
    print(F"{var} is a float")
else:
    print(F"{var} is not a float")

##Question 11: Write a Python program to perform arithmetic operations: addition, subtraction, multiplication, and division.
num1 = 4
num2 = 2

sum = num1 + num2
difference = num1 - num2
product = num1 * num2
quotient = num1 / num2
floor_division = num1 // num2
modulas = num1 % num2
exponent = num1 ** num2

print ("sum:",sum)
print("difference:", difference)
print("product:", product)
print ("quotient:", quotient)
print("floor division:", floor_division)
print("modulas:",modulas)
print("exponent:",exponent)

##Question 12: Write a Python program to demonstrate comparison operators: equal to, not equal to, greater than, less than.
a = 2
b = 9

print(F"{a} == {b}: {a == b}")
print(F"{a}!={b}: {a!=b}")
print(F"{a}<{b}: {a<b}")
print(F"{a}>{b}: {a>b}")

##Question 13: Write a Python program to demonstrate logical operators: and, or, not.
 
a = True
b = False

print(F"True and False : {a and b}")
print(F"True or False : {a or b}")
print (F"not True : {not a}")

##Question 14: Write a Python program to calculate the square of a number.
t1 = float (input("enter a number:"))
square = t1 ** 2
print(F"the square of the {t1} is {square}.")

##Question 15: Write a Python program to check if a number is even or odd.
a1 = int(input("enter a number:"))
if a % 2 == 0:
    print(f"{a1} is even.")
else:
    print(F"{a1} is odd.")

##Question 16: Write a Python program to find the sum of the first n natural numbers.

n1 = int(input("enter a number:"))
sum_n = (n1*(n1+2))//2
print(F"the sum of first {n1} natural numbers is {sum_n}.")

##Question 17: Write a Python program to check if a year is a leap year.
year = int(input("enter a year:"))
if (year % 4 == 0 and year % 100 != 0) and (year % 400 == 0):
    print(F"{year} is a leap year.")
else:
    print(f"{year} is not a leap year.")

##Question 18: Write a Python program to reverse a string.
string = input("enter a string:")
reversed_string = string[::-1]
print(F"the reversed string is: {reversed_string}")

##Question 19: Write a Python program to check if a string is a palindrome.
string = input("enter a string:")
if string == string[::-1]:
    print(f"{string} is a palindrome")
else:
    print(f"{string} is not a palindrome.")

##Question 20: Write a Python program to sort a list of numbers in ascending order.
numbers = [int(x) for x in input("enter numbers seperated by space:").split()]
numbers.sort()
print(f"sorted list : {numbers}")



