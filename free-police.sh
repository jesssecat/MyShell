#!/bin/bash
free=`free -m |awk 'NR==2 {print$4}'`
#echo $free
frees(){
if [ $free -lt 50 ]
  then 
    echo $free|tee /tmp/message.txt
    echo `date +%F-%T` "Memory exceeding the standard: "$free
  else
    echo Normal memory
  sleep 5
    frees $free
fi
}
frees $free
