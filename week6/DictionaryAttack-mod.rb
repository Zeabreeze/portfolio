#!/usr/bin/ruby 

#Modify one of the Python, Ruby or Perl password scripts to attempt a brute force
#attack instead of a dictionary attack. A brute force attack attempts every 
#possible combination of numbers and letters until the correct password
#is guessed instead of using words from a list. 
#
#Written by: Isaree Benjabawornnun

require 'digest' 

#read the password hash 
passwordHash = "5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5" 

#open the wordlist and repeat for each word 
IO.foreach("wordlist.txt") do | word | 
    word.chomp! 

    #hash the word 
    wordlistHash = Digest::SHA256.hexdigest(word) 
    puts("Trying password #{word}: #{wordlistHash}") 

    #if the hash is the same as the correct password's hash then we have cracked the password! 
    if(wordlistHash == passwordHash) 
        puts("Password has been cracked! It was #{word}") 
        return 
    end 
end 