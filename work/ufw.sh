#!/bin/bash
#查看防火墙存在的策略
#ufw status
#启用防火墙
#ufw enable

#install
apt-get install ufw

#放行ssh
ufw allow ssh

#ufw delete allow 80
#放行web
ufw allow 443
#zabbix
ufw allow 10050

ufw enable
#开始启用防火墙规则
