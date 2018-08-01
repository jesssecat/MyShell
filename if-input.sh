#!/bin/bash
#写法一
#[ $# -ne 2 ] && {
# echo "muse two args"
# exit 1 #由于不满足传参的个数，退出脚本
#}
#echo yes,jesse!
if [ $# -ne 2 ]
  then 
    echo "muse two args"
    exit 1
fi
echo $1 $2
