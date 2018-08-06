#!/bin/bash
i=1
sum=0
while ((i<=10000000)) #因为要跳出，所以用双括号
do
    ((sum=sum+i))
    ((i++))
done
echo $sum
