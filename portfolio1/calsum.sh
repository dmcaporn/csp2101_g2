
#Donna Caporn
#student number:6042275

#write a script that clculate the sum of 3 integars passed through the command line
#display to terminal

#!bin/bash/


let sum=$1+$2+$3 #allow 3 integars to be entered in command line and adds them together


if [  $sum -gt 30 ] 
    then
    echo "Sum exceeds maximum allowable" #if the sum of all 3 integars is greater than 30 output to terminal 'sum exceeds maximum allowable' then terminate

else 
    echo "The sum of $1 and $2 and $3 is $sum" #but if it does not then print to screen 'the sum of $1 and $2 and $3 is $sum' then terminate

fi

exit 0