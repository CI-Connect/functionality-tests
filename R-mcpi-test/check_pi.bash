#!/bin/bash

a=$(tail -n 1 $* | awk '{print $2}')
a_int=${a%.*}
b=0
c=5
if  [ $a_int -gt $b ] && [ $a_int -lt $c ] ;
   then 
      echo "pi is in range"
fi

