#!/bin/bash

#part 1

wc -c <  "$1"

#part 2

wc --lines < "$1"

#part 3

wc --word < "$1"

#part 4

input="$1"
i=1
IFS=$'\n'
while read line; 
do
   echo -n "Line No: $i - Word Count: "
   wc -w <<< "$line"
   echo " "
i=$((i+1))
done < "$1"

#part 5

file="$1"
grep -E -o '\w++' "$file" | sort >"temp.txt"
count=0
uniq -c "temp.txt" > "ct.txt"
while read -r line;
do
array=($line)
if (($((${array[0]}-1))==0))
then
continue
else
echo "Word : ${array[1]}  - No of Occurances : $((${array[0]}-1))"
fi
done < "ct.txt"
rm ct.txt
rm temp.txt