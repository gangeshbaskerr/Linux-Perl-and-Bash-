#!/bin/bash
read -p "Enter filename :" filename

#checks if file exists or not

if [[ -e $filename ]] #checks if file exists or not
then
    echo "$filename file found"
else
    echo "$filename file not found"
fi

#checks if file is empty or not

if [[ -s $filename ]] #checks if file is empty or not
then
    echo "$filename file not empty"
else
    echo "$filename file empty"
fi


# Checks if the file has write permmission or not and appending if the file has write permissions

if [[ -w $filename ]]
then
    #cat >> $filename #for appending
    cat > $filename #erases the data allready presents and frshly inserts data
else
    echo "file doesnt have write permissions"
fi


#  displaying 2 to 6 lines
echo -n ` head -6 $filename | tail +2 ` # always its -(minus) for head and + for tail
echo
#displaying last 5 lines
tail -n 5 $filename
echo
#displaying first 5 lines
head -n 5 $filename
echo
#displaying 5th line 
head -5 $filename | tail +5
echo
