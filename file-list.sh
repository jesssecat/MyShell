#!/bin/bash
cd /opt/filename
for filename in `ls`
do
   #mv $filename `echo $filename|cut -d . -f1`.txt
   a=`echo $filename|cut -d . -f1`.jpg
   mv $filename $a
   #echo $a
done
