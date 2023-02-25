#!/usr/bin/python3 
 
import hashlib 
import getpass

#Ask for Password
print('Please type your password and press enter')
password = getpass.getpass() 
SHA1_pass = hashlib.sha1(password.encode('utf-8'))
SHA1_done = SHA1_pass.hexdigest()
    #except Exception as error:
   # print('ERROR', error)

	#open the wordlist 
with open("wordlist.txt", "r") as wordlist: 
	for word in wordlist.readlines(): 
            word = word.rstrip() 
            #hash the word 
            wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
			 #if the hash is the same as the correct password's hash
            if(wordlistHash == SHA1_done): 
                print(f"ACCESS GRANTED") 
                break        
