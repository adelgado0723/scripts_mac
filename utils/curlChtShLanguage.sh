#!/bin/bash

echo "curl cht.sh/$1/$2/" & 
curl cht.sh/$1/$2 & 

while [ : ]; do 
    sleep 1; 
done

