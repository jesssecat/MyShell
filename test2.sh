#!/bin/bash
#a=jesse123
#echo $a|sed 's/[a-z]//g'
#function tt(){
#  var=`expr $1 + $2`
#  echo hello,word $var
#}
#tt $1 $2
export PATH=$PATH:/bin:/sbin:/usr/sbin
#export LANG="zh_CN.GB18030"
a=10
limits=/etc/security/limits.conf
if [ $a -eq "10" ]
  then
    action "etc/security/limits.conf" /bin/true
else
    action "etc/security/limits.conf" /bin/false
fi
