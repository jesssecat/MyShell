#!/bin/bash
#for n in {0..32767}
#do
#   echo "`echo $n|md5sum` $n" >>/tmp/zhiwen.log
#done
md5char="4fe8bf20ed"
while read line
do
   if [ `echo $line|grep "$md5char"|wc -l` -eq 1 ]
   then
   echo $line
   break
   fi
done </tmp/zhiwen.log

