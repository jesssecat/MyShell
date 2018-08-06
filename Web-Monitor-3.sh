#!/bin/bash
. /etc/init.d/functions
check_count=0
url_list=(
http://www.baidu.com
http://www.souhu.com
http://www.37os.com
)
function wait(){
  echo -n '3秒后，执行检查URL操作';
  for ((i=0;i<3;i++))
  do
    echo -n ".";sleep 1
  done
  echo
}
function check_url(){ #定义监测URL的函数
  wait                #执行倒计时的函数
  for ((i=0;i<`echo ${#url_list[*]}`; i++)) #循环数组元素
  do
    wget -o /dev/null -T 3 --tries=1 --spider ${url_list[$i]} >/dev/null 2>&1
    #tries 重试的次数
    #监测是否可以访问数组的元素地址
    #返回0，则访问成功
    if [ $? -eq 0 ]
    then
      action "${url_list[$i]}" /bin/true
    else
      action "${url_list[$i]}" /bin/false
    fi
  done
  ((check_count++))
}
main(){
  while true
  do
    check_url
    echo "------check count:${check_count}------"
    sleep 10
  done
}
main
