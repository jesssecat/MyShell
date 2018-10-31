#!/bin/bash
v_time=`date "+%F %T"`
curlwd(){
	i=0
	data=`order.php?act=ajax_order_detection_auto`
	while(( $i<5 ))
	do
		if [ $? -eq 0 ]
		then
			echo $data------$v_time >>1.txt
			break
		else
			let i++
		fi
		echo $i
	done
}
curlwd
cat 1.txt
rm -rf 1.txt
