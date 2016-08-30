# textsurfer
Surf multiple text files for all instances of "username" and "password" and dump them into single documents.

Just a simple BASH script to automate the process of searching through large amounts of text documents to return all instances of 'username' and 'password'.

1. Place all files you want surfed into a single directory.
2. Download textsurfer.
3. Place textsurfer.sh into the same directory as your files from Step 1.
4. Open up a terminal prompt and navigate to the directory containing your files.
5. bash textsurfer.sh

This will leave you with a new directory inside your current working directory called "Lists" and place two new files within the same directory called 'userlist.txt' and 'passlist.txt'. Both files are sorted to each other and numbered for convenience. Note that there is room for error if there are multiple instances of the same username or password, which is why I opted to leave the files separate upon completion. Just look over your files and determine for yourself which are incorrect or duplicates because each individual to use it will have a different outcome.

The script uses commands to work with all files in whichever directory it is placed in. I would not recommend using it for anything but it's indended purpose, if used incorrectly it could cause a MASSIVE endless loop whereupon it will create a text file filled with exponential duplicates of itself very quickly. Think of it like this math problem:

n = text-file created by endless loop

The file size would increase at a rate of (n^n)^n which is ('n' to the 'n'th power)to the 'n'th power. Depending on how many files you have in the directory its working in will determine the initial size of 'n'. Needless to say it can create a file on such a massive scale at an exponentially increasing rate of speed that I have no doubt it will surely crash your computer. BUT as long as you use it the correct way it works just fine :)
