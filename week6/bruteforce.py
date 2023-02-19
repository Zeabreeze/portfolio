#!/usr/bin/python3

#Module 6.6, step 1:
#The purpose is to modify, in this case, a Python script to attempt a brute force attack
#The original scipt sample was provided by Rajesh Son. 
#The code has been slightly modified so to test a certain password hash set in.
#the variable below.  Fordemonstration, I have chosen a basic password
#so the bruteforce code does not attempt to figure out forever.
#

import hashlib
import random

# hidden password hash(Password is blah)
#(used in prev test 'hi58'= "c2c9fd4135343138595fc5c5848b5389f9c1ac6ce0bad5b53661fd03843ef233")

passwordHash = "8b7df143d91c716ecfa5fc1730022f6b421b05cedee8fd52b1fc65a96030ad52"
wordlistHash=''

# Function to convert
def listToString(s):
    str1 = ""
    for ele in s:
        str1 += ele
    return str1

your_list = '0123456789abcdefghijklmnopqrstuvwxyz'
character_list = list(your_list)

guess_password='' 

# while the password not matched, throw in 
# a random of four characters to check against each character in the password
while (passwordHash != wordlistHash):
    guess_password=random.choices(character_list,k=4)
    print(">>>>>"+str(guess_password)+"<<<<<")
    print(listToString(guess_password))
    word=listToString(guess_password)
    word = word.rstrip()
    wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
    #display the correct guessed password, showing each letter matched
    if (passwordHash == wordlistHash):
        print("your password is:",guess_password)
        break