#!/bin/bash
v_time=`date "+%F %T"`
curlwd(){
	data=`order.php?act=ajax_order_detection_auto`
}
curlwd
if [ $? -eq 0 ]
then
	echo $data------$v_time >>1.txt
else
	curlwd
	echo $data------$v_time >>1.txt
fi
