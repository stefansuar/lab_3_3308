#!/bin/bash
# Author: ssuarez
# Date: 09/22/2019

# Problem 1 Code: 

#  1: prompts the user to input a file name and reg ex and stores user input
echo "Input File Name: "
read fileName
echo "Input Regular Expression: "
read regEx


#  2: Using the "grep" (grep -E) command and the user input, search the given file with the given regular expression 
#  (grep <search pattern> <file name>)
grep -E regEx fileName

#  3: Using the "grep" command and the file "regex_practice.txt", output the number of phone numbers in "regex_practice.txt"
#  (grep -c will count the number of lines that match the pattern)
echo "Number of phone numbers: "
grep -c '\(([0-9]\{3\})\|[0-9]\{3\}\)[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}' regex_practice.txt

#  4: Using the "grep" command and the file "regex_practice.txt" output the following
#   a) a count of the number of emails
echo "Number of emails: "
grep -c "[[:alnum:]]\+@[[:alnum:]]\+" regex_practice.txt

#   b) a list of all phone # with "303" area code (grep -o will print only the matching, or non empty, parts of a line)
echo "303 phone list: "
grep -o '[0-9]\{3\}[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}' regex_practice.txt | grep 303-

#   c) store a list of all the emails from geocities.com in a new file named "email_results.txt" (the ">>" operator appends the output to an existing file or creates a new file containing the output if it does exist  EX: grep <pattern> <file name> >> email_results.txt)
grep "[[:alnum:]]\+@[[:alnum:]]\+" regex_practice.txt | grep geocities.com > email_results.txt

#  5: run git "add" on the new text file (email_results.txt) only this file should be staged


#  6: run git "commit" with some default message


#  7: optionally, you can have your script also push your changes to github. you may run into issues running this via a script. before running the script you can look at temporarily storing your github credentials


#  8: if you did not have your script push your changes to github, make sure and do so manually in your terminal
