#!/bin/bash
CheckUrl(){
timeout=5 
#定义wget访问的超时时间，超时就退出
fails=0   
#初始化网站的访问失败次数，如果达到两次就报警或者发送邮件
success=0 
#初始化访问网站成功的次数并记录变量，如果为1，则表示成功，退出脚本
while true
  do
    wget --timeout=$timeout --tries=1 http://www.baiduddd.com -q -O /dev/null
    #使用wget测试
    if [ $? -ne 0 ] #如果上述wget命令执行不成功，返回值不为0，则执行if语句内的命令
      then
        let fails=fails+1
        #将访问失败的次数+1，let是运算
    else
        let success+=1
        #返回值不为0则不成立，即访问成功，将成功的次数+1
    fi
    if [ $success -ge 1 ]
    #如果成功的次数大于等于1
      then
        echo success #输出成功
        exit 0
    fi
    if [ $fails -ge 2 ] #如果失败的次数大于或者等于2，报警
      then
        Critical="sys is down"
        echo $Critical
        #echo $Critical|tree|mail -s "$Critical" 813070871@qq.com
        #这里写邮箱
        exit 2
    fi
  done
}
CheckUrl
