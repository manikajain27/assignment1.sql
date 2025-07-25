# string formatting and %-fromatting
name = "Manika"
city = "Delhi"
firsName = "My name is %s and I am from %s." % (name, city)
print(firsName)

#str.format()function
name2 = "Aditya"
city2 = "Pune"
biodata = "My name is {} and I am form {}." .format(name2, city2)
print(biodata)

name3 = "Aastha"
city3 = "Lucknow"
biodata2 = "My name is {0} and I am from {1}." .format(name3, city3)
print(biodata2)

n = "Trisha"
c = "Jammu"
biodata3 = "My name is {name4} and I am from {city4}." .format(name4 = n, city4 = c)
print(biodata3)

# format specifiers f for float, d for integer, b for binary
marks = "I got {0:f}% marks in english.".format(66.89)
print(marks)

marks = "I got {:f}% marks in english.".format(66)
print(marks)

marks = "I got {0:.2f}% marks in english.".format(56.2315647)
print(marks)

#f-string
name = "Anish"
city = "Chandigarh"
biodata5 = F"My name is {name} and I am from {city}."
print(biodata5)

name = "Raghav"
city = "Sri Ganganagar"
biodata8 = f"My name is {name.upper()} and I am from {city.upper()}."
print(biodata8)


name6 = "Punita"
age = "23"
gender = "female"
introduction = f"My name is {name6}." \
               f"My age is {age}." \
               f"My gender is {gender}." 
print(introduction)

name7 = "Arika"
age = "23"
gender = "female"
introduction = (f"My name is {name7}." 
               f"My age is {age}." 
               f"My gender is {gender}.")
print(introduction)

namee = "Manan"
agee = "16"
genderr = "Male"
intro = f"""My name is {namee}. 
My age is {agee}. 
My Gender is {genderr}."""
print(intro)

name0 = f"{'Jaspreet'}"
print(name0)

intro1 = f"My name is \"khushi\" and I am from \"Delhi\". "
print(intro1)

x = 10
y = 20
result = f"""(the result of x+y is {x+y})"""
print(result)

x = 10
y = 20
result = f"""(the result of {{x+y}} is {x+y})"""
print(result)