#Donna Caporn
#student number: 6042275

#!/bin/bash
#allow user to search for specific lines in a server access log according to a pattern they provide and have these
#lines written to a new file for further use

while true; 
do
    grep_options="-ni" #so grep always include n (line number and details) & i(case insensitive)
    
    read -p "Enter a search: " keyword; #prompts user to enter a search term
    read -p 'Do you want a whole word search? ' whole_yn; #prompts user for a y/n to whole word match
    read -p 'Do you want an inverted search?: ' inverted_yn #prompts user for a y/n to invert search
    case $whole_yn in 
        [Yy]* ) # if yes to whole word 
        grep_options+="w";; #add a 'w' to the grep_option variable to search for whole word
    esac
    case $inverted_yn in 
        [Yy]* ) #if yes to inverted
        grep_options+="v";; #add a 'v' to the grep_option variable to invert match
    esac
    num_matches=$(grep "$grep_options" "$keyword" access_log.txt | wc -l) #calculates number of matches
    if [[ $num_matches -gt 0 ]]; then #echoes the following if matches are greater than 0
        if [[ $num_matches -eq 1 ]]; then
            echo "$num_matches match found" #writes match if only one
        else
            echo "$num_matches matches found" #writes matches if more than 1
        fi
        grep "$grep_options" "$keyword" access_log.txt; #look for partialword in terminal and count how many matches
        echo "Search complete" #lets user know that the search is complete
    else
        echo "No matches found" #echoes to terminal if no matches are found
    fi
    read -p  'Do you want to perform another search Y or N: ' search_yn #asks at the end of each search if user wants to perform another search
    case $search_yn in 
        [Nn]* )  #if no further searches are wanted  echoes to terminal EXIT and terminates 
        echo 'EXIT';
        exit;;   
    esac      
done
exit 0