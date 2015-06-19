#!/bin/bash

a=$(grep ENERGY $* | tail -n 1 | awk '{print $9}')
a_int=${a%.*}


if  [ $a_int -lt "0" ] ;
   then 
      echo "energy is negative and in range"
fi

