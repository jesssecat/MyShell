#/bin/bash
sum=0
exec <$1          #将参数$1定向到exec
while read line   #按照行读取传参的文件内容
do
  size=`echo $line|awk '{print $10}'`
  expr $size + 1 &>/dev/null #判断数字
  if [ $? -ne 0 ];then
    continue                 #终止循环，不是数字不加
  fi
  ((sum=sum+$size))
done
echo "$$(1):total:${sum}bytes=`echo $((${sum}/1024))`KB"

