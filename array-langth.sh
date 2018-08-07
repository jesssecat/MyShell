#!/bin/bash
#输出数组中长度大于4的元素
array=(hello my name is jesse)
#echo ${array} #输出元素
#echo ${#array} #输出元素的个数
for((i=0;i<${#array};i++))
do
  a=`echo ${array[i]}`
  #echo $a
  #echo ${#a}
  if [ ${#a} -gt "4" ] 
  then
     echo $a
  fi
  continue
done
