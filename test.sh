#!/bin/bash
#通过read比较两个数字大小，不能用if
echo -n "pls input two number:"
read var var1
#echo $var $var1
[ -z "$var" ]||[ -z "$var1" ] &&{
  echo "输入不正确"
  exit 0
}
expr $var + 0 &>/dev/null
r1=$?
expr $var1 + 0 &>/dev/null
r2=$?
test $r1 -eq 0 -a $r2 -eq 0||{
  echo "输入的不是两个整数"
  exit 2
}
[ $var -eq $var1 ] && echo $var'='$var1
[ $var -gt $var1 ] && echo $var'>'$var1
[ $var -lt $var1 ] && echo $var'<'$var1
exit 2
#[ $var -ge $var1 ] && echo $var < $var1 || echo $var > $var1
#
#[ -z "abc" ] && echo 1 || echo 0 #长度不为0为真
#[ -n "aaa" ] && echo 1 || echo 0 #长度为0，为真
#[ -f /etc ] || {
#  echo 1
#  echo 2
#}
#判断：如果/etc 是普通文件，则输出
#a=""
#b="abc"
#if [ $a == $b ]
#  then 
#   echo yes
#fi
#if [ -z $a ];
#  then
#    echo "$a不为空,-n判断字符串长度不为0，则为真"
#  else
#    echo “长度为0”
#fi
