#/bin/bash
exec </tmp/tmp.log
while read line
do
  echo $line
done
echo ok
#使用脚本之前先执行一下命令：
#seq 5 >/tmp/tmp.log
#当exec打开文件后，read命令会每次都会将文件指针移动到文件的下一行进行读取，
#直到文件末尾，利用这个可以实现处理文件内容
