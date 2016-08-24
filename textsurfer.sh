#!/usr/bin/bash

### textsurfer.sh ###

### Simple bash script to take in multiple text files, ###
### search the contents for known email handlers ###
### (@gmail, @yahoo, etc) and organize the results into ###
### a single file. Place textsurfer.sh in the same directory as ###
### the files you want surfed. ###

### Creates list of unsorted usernames. List includes garbage. ###
/usr/bin/grep -B0 username ./* --exclude email-sort.sh > user-dirty.txt

### Removes garbage from username list as well as old list file. ###
sed 's/^.*:/username:/' user-dirty.txt > user-clean.txt
rm user-dirty.txt

### Repeats previous process to create list of unsorted passwords. ###
/usr/bin/grep -B0 password ./* --exclude email-sort.sh user-clean.txt > pass-dirty.txt
sed 's/^.*:/password:/' pass-dirty.txt > pass-clean.txt
rm pass-dirty.txt

### Removes duplicates from lists and numbers them beginning at 1. ###
cat user-clean.txt | uniq -u > user-temp.txt && cat -n user-temp.txt > userlist.txt
cat pass-clean.txt | uniq -u > pass-temp.txt && cat -n pass-temp.txt > passlist.txt

### Removes garbage ###
rm user-clean.txt pass-clean.txt user-temp.txt pass-temp.txt
