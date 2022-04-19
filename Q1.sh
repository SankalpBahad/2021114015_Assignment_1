#!/bin/bash

#part a
sed -r '/^$/d' quotes.txt

echo "--------------------------------------------------------------------"
#part c
sort quotes.txt | uniq -u 