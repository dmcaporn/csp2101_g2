#Donna Caporn
#student number: 6042275

#!/bin/bash

# this script will count the number of empty/non-empty files and count the number of empty/non-empty directories in a given directory 
#variables used in script

nonempty_files=0     #files that contain data
empty_files=0    #files that are empty
nonempty_dir=0     #non-empty directories
empty_dir=0      #empty directories

dir=$1 #user can enter any directory as an argument 
 

for item in $dir/* # look for all items in this directory
do
    if [[ -f $item ]]; then # check that the file is a standard file
        if [[ -s $item ]]; then # check if the file had data
            ((nonempty_files++)) #increment the files that contain data counter by 1
        else 
            ((empty_files++)) # increment the  empty files counter by 1
        fi       
    fi

    if [[ -d $item ]]; then # check if the item is a standard directory
        if [[ $(ls -A $item) ]]; then #look to see if directory has contents
            ((nonempty_dir++)) # increment non empty directory counter by 1              
        else
            ((empty_dir++)) # increment empty directory counter by 1
        fi           
    fi
done
echo -e "The $dir directory contains:\n$nonempty_files files that contain data\n$empty_files files that are empty\n$nonempty_dir non-empty directories\n$empty_dir empty directories"
# echoes to terminal the list of finds