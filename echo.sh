#!/bin/bash
a=192.168.0.1
b='192.168.0.1'
c="192.168.0.1"
echo "a=$a"
echo "b=$b"
echo "c=${c}"
H=$(uname -n)
#touch test.txt
#tar zcvf $H.tar.gz test.txt
echo $0 #输出当前脚本名称
echo $1 #输出脚本的第一个变量 ./1.sh hello
echo $2 #输出脚本的第二个变量 ./1.sh hello jesse
echo $* #将所有的传参进行打出
echo $@ #也是打印出所有
dirname $0
basename $0
echo $# #获取用户的输入传参个数
echo $$ #输出脚本在后台的进程
