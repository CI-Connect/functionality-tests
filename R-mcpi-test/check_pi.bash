#!/bin/bash

a=$(tail -n 1 $* | awk '{print $2}')
a_int=${a%.*}
if  [ $a_int -gt "0" ] && [ $a_int -lt "5" ] ;
   then 
      echo "pi is in range"
fi

