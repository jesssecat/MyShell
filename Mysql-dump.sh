#!/bin/bash
#因为命令行不能直接输入密码
#在/etc/my.conf 添加配置段
#[client]
#host=localhost
#user=数据库用户
#password='数据库密码'
mysqldump --defaults-extra-file=/etc/my.cnf zabbix > /opt/work/zabbix_$(date +%F).sql

