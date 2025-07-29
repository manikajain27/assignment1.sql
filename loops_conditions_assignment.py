##Write a program that asks the user to input a number and prints whether the number is positive and zero.

'''number = int(input("enter a number:"))
if number > 0:
    print(f"{number} is positive")
elif number < 0:
    print(f"{number} is negative")
else:
    print(f"{number} is zero")'''

##Write a program that asks the user to input a number and prints whether the number is positive and even, positive and odd, or negative.

'''a = int(input("enter a number:"))
if a>0:
    print("a is positive")
    if a%2==0:
      print("a is even")
    else:
       print("a is odd")
else:
    print("a is negative")'''       

##Write a program that prints all the numbers from 1 to 10 using a for loop.

'''for i in range(1,11):
    print(i)'''

###Write a program that prints all the numbers from 1 to 10 using a while loop.

'''count = 1

while count <=10:
    print(count)
    count = count+1'''

##Write a program that prints a 5x5 grid of asterisks (*) using nested loops.

'''for row in range(5):
    for col in range(5):
        print("*" , end="")
    print()'''    

'''row = 0

while row<5:
    col=0
    while col<5:
      print("*", end="")
      col = col+1
    print()
    row = row+1'''

###Write a program that asks the user to input numbers until they input 0. The program should print the sum of all the input numbers.

'''total = 0

while True:
    num = int(input("enter numbers(0 to stop):"))
    if num == 0:
      break
    total += num

print("the sum of all the numbers is:", total)
'''

##Write a program that prints all the numbers from 1 to 10 except 5 using a for loop and continue statement.
'''for i in range(1,11):
    if i==5:
       continue
    print(i)'''

###Write a program that defines an empty function using the pass statement.
'''def my_function():
    pass'''

##Write a program that asks the user to input a number and prints all the even numbers from 1 to that number using a for loop.
'''num = int(input("enter a number:"))
for i in range (1,num):
    if i % 2!=0:
        continue
    print(i)'''

##Write a program that calculates the factorial of a number input by the user using a while loop.
'''num  = int(input("enter a number:"))
factorial = 1
i = 1

if num > 0:
  while i<=num:
    factorial *= i
    i += 1
  print(F"the factorial of {num} is {factorial}")
else:
   print("please enter a positive number")'''


##Write a program that calculates the sum of the digits of a number input by the user using a while loop.
'''num = int(input("enter a number:"))

num = abs(num)
digit_num = 0

while num>0:
    digit = num % 10
    digit_num += digit
    num = num//10

print("sum of digits:", digit_num)'''

##Write a program that checks if a number input by the user is a prime number using a for loop.
'''num = int(input("enter a number:"))

if num <= 1:
    print(f"{num} is not a prime number")
else:
    for i in range(2,num):
        if num % i ==0:
            print(f"{num} is not a prime number")
            break
    else:
        print(f"{num} is a prime number") 
'''

##Write a program that prints the first n Fibonacci numbers, where n is input by the user.
n = int(input("enter a fibonacci numbers to print:"))

a,b=0,1
count = 0

if n<=0:
    print("please enter a positive number")
else:
    print("fibonacci sequence:")
    while count < n:
        print(a)
        a,b=b,a+b
        count += 1