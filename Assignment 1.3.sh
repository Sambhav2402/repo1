#!/bin/bash 

 cut -d, -f4,5,8 parking_data.csv | uniq | grep "FIRE" > fire.csv
 
