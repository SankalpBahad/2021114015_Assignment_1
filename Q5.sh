#!/bin/bash

#part a

read -p "Enter string: " string
len=${#string}
for ((i = $len - 1; i >= 0; i--))
do
    reverse="$reverse${string:$i:1}"
done
echo "$reverse"

#part b

read -p "Enter string: " tempstr
len=${#tempstr}

for (( i=$len-1; i>=0; i-- ));
do
    str="$str${tempstr:$i:1}"
done

for ((i=$len-1; i>=0;i--))
do
    ch=${str:i:1}
    ch=$(echo "$ch" | tr "0-9a-zA-Z" "1-9a-zA-Z")
    echo -n $ch
done
echo " "

#part c

read -p "Enter string: " string
len=${#string}
tmp=($len-1)/2;
for ((i = 0; i < $len; i++))
do
    if [[ i -lt $len/2 ]]
    then
        temp="$temp${string:$tmp:1}"
        tmp=$tmp-1
    else
        temp="$temp${string:$i:1}"
    fi
done
echo "$temp"
