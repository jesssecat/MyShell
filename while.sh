#!/bin/bash
i=5
while ((i>0))
#双小括号是表达式的用法，可以跳出循环
do
  echo $i
  ((i--))
done
