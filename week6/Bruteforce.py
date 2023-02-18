#!/usr/bin/python3

import hashlib
import random

#!/usr/bin/python3

 

import hashlib

import random

 

#hidden password hash(Password is blah)

 

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

 

while (passwordHash != wordlistHash):

      guess_password=random.choices(character_list,k=4)

      print(">>>>>"+str(guess_password)+"<<<<<")

      print(listToString(guess_password))

      word=listToString(guess_password)

      word = word.rstrip()

      wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()

      if (passwordHash == wordlistHash):

            print("your password is:",guess_password)

            break



