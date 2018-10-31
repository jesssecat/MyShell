#!/bin/bash
source_dir=./1.txt   
#日志记录位置
source_url=url
#URL请求位置
#脚本会请求URL，如果请求不成功，会尝试继续请求四次
v_time=`date "+%F %T"`
ccurl(){
	data=`curl ${source_url}`
}
curlwd(){
	i=0
	if [ ! -f ${source_dir} ]
	then
		touch $source_dir
	fi
	while(( $i<5 ))
	do
		ccurl
		if [ $? -eq 0 ]
		then
			echo 'URL返回值:'$data------'返回时间:'$v_time >>$source_dir
			break
		else
			let i++
		fi
	done
	#echo ‘执行了次数’$i
	if [ $i -eq 4 ]
	then
		echo 'URL无法请求或者不稳定'$data------'返回时间:'$v_time >>$source_dir
	fi
}
curlwd
cat $source_dir
