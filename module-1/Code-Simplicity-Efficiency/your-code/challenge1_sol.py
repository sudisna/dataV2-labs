"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.
"""
# Importing required libraries
import numpy as np

#convert numbers to words
def num2word (x):
    num_dict = {0:"zero",1:"one",2:"two",3:"three",4:"four",
          5:"five"}
    return num_dict[x]

#convert words to numbers
def word2num(a):
    word_dict={"zero":0,"one":1,"two":2,"three":3,"four":4,"five":5,"six": '6', "seven": '7', "eight": '8', "nine": '9', }
    return word_dict[a]
   
    

#perform addition
def plus(a,c):
    x = word2num(a)
    y = word2num(c)
    z = x + y
    return f"{a} plus {c} equals {num2word(z)}."
#perform subtraction    
def minus(a,c):
    x = word2num(a)
    y = word2num(c)
    z = x - y
    if z >= 0:
        return f"{a} minus {c} equals {num2word(z)}."
    else:
        z = -z
        return f"{a} minus {c} equals negative {num2word(z)}."

# take input and perform calculation based on input
def calc():
    while True:
        print('Welcome to this calculator!')
        print('It can add and subtract whole numbers from zero to five')    
        try:
            
            a = input('Please choose your first number (zero to five): ')
            b = input('What do you want to do? plus or minus: ')
            c = input('Please choose your second number (zero to five): ')
            if b == "plus":
                print(plus(a,c))
            else:
                print(minus(a,c))
            

        except ValueError:
            print("I am not able to answer this question. Check your input.")






   
calc() 
print("Thanks for using this calculator, goodbye :)")
