# Homework 2: Unix shell

This homework will assess your ability to run commands in the shell and make a simple script.

Replace the lines specified in _italics_ with your answers and save as a text file.


## Problem 0

**60 points**

Complete the interactive tutorial.

The part of the history section which discussed getting a longer history on mac was a bit confusing. I could not get it to work and ended up skipping it since it was optional. 

## Problem 1

**20 points**

**Write a script that outputs some user and location data and moves that output to a newly created directory**

Make a single script that prints out a file called question01.txt. 

This file should contain the following text:

  My username is (your username, but the script needs to work for anyone, not just you)

  My home directory is (your home directory, but the script needs to work for anyone, not just you)

  The contents of the tfcb_2023/lectures/lecture04/ directory are

  (prints the contents of that directory)

This script should also create a directory called homework02, and move question01.txt into the homework02 directory.

An example output answer should be:

My username is campbellm <br>
My home directory is /Users/melody <br>
The contents of the tfcb_2023/lectures/lecture04/ directory are<br>
01-first-steps.md<br>
02-directories<br>
03-redirection<br>
04-vim<br>
05-history<br>
06-scripting<br>
07-more-interactive-shell<br>
README.md<br>
quickref.md<br>
sequence.gb<br>
slides<br>
vader.txt<br>

#!/bin/bash

lecture_dir="$HOME/Desktop/repo dest/tfcb_2024/lectures/lecture04"
lecture_contents=$(ls "$lecture_dir")

echo "My username is $USER" > question01.txt
echo "My home directory is $HOME" >> question01.txt
echo "The contents of the tfcb_2024/lectures/lecture04/ directory are" >> question01.txt
echo "$lecture_contents" >> question01.txt

mkdir -p homework02

mv question01.txt homework02


## Problem 2

**20 points**

**Write a script that uses a loop to output files with specific names**


Make a single script that does the following:

Makes a new directory in homework02 called question02

In that directory, your script should make 25 new files called
file###.txt

the ### should be the numbers from a list you can find here:

tfcb_2023/homeworks/homework02/list.txt

You can make the contents of those files whatever you want (hint: slide 9... )

#!/bin/bash

mkdir -p homework02/question02
list_file="$HOME/Desktop/repo dest/tfcb_2024/homeworks/homework02/list.txt"
for i in $(cat "$list_file"); do echo "File $i" > "homework02/question02/file$i.txt"; done


