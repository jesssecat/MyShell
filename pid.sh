#!/bin/sh
pidpath=/tmp/a.pid
if [ -f "$pidpath" ]
  then
    kill `cat $pidpath` >/dev/null 2>&1
    rm -f $pidpath
fi
echo $$ >$pidpath
#echo $pidpath
sleep 300
#这个脚本用于执行启动或者定时任务时，相同的脚本只能在一个中运行，当有新的脚本运行时，必须关闭没有完成或者在没有退出的上一次的脚本进程
