#Donna Caporn
#Student number:6042275

#!bin/bash/

# prompt user for a two digit number. If they enter 20 or 40 it validates and exits. If not prompts user to try again

while true; do #begin loop
    read -p 'Enter a two digit number: '  var #prompt user to enter a two digit number

        if [[ $var -eq 20 ]] || [[ $var -eq 40 ]]; then #if invalid number/string/null is given loop back to prompt
               break # valid number, exit loop
        
        else
                echo "Invalid entry, please try again" #invalid entry message, then it will loop back to the beginning
             
        fi
done

 echo "Thank you, you have entered $var " # echo input number to terminal when correct number is entered
exit 0
