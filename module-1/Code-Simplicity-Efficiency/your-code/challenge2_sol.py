"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""
import string
import random
import sys
def RandomStringGenerator(len:int):
    p = 0
    chars = string.ascii_lowercase + string.digits
    s = ''
    return ''.join(random.choice(chars) for p in range(len))
 

def BatchStringGenerator(len:int):
    r = []
   
    for i in range(len):
        c = None
        if a < 8 or b > 12:
            sys.exit('Incorrect min and max string lengths. Try again.')
            
        elif a < b:
            c = random.choice(range(a, b))
        else:
            c = a
        r.append(RandomStringGenerator(c))                    
    return r

a = int(input('Enter minimum string length: '))
b = int(input('Enter maximum string length: '))
n = int(input('How many random strings to generate? '))

print(BatchStringGenerator(n))
