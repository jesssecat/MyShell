#!/bin/bash
rm -rf test.txt
touch test.txt
#date >test.txt
a=`date`
for loop in 1 2 3 4 5
do
    echo "The value is: $loop" $a  >>test.txt
done
sleep 1
cat test.txt
