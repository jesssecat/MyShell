#!/bin/bash
read a c b
#echo $a $b $c
[ "$c" -eq "+" ] &&{
 num=`expr $a + $b`
 echo $num
}
#echo $num
