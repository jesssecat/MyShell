#!/bin/bash
#添加用户
#useradd jesse

#删除用户
#userdel jesse

#添加一个组
#groupadd jesse
#groupdel jesse


#查看所有的用户
#cut -d':' -f 1 /etc/passwd

#查看所有的组
#cut -d':' -f 1 /etc/group

#查看一个用户所属组的命令格式如下：
#gorups <username>


#新建用户的同时新建立工作组
#useradd -g test jesse

#给已有的用户增加工作组
#usermod -G groupname username 或者：gpasswd -a user group




#不过这个命令不是自带的，需要额外安装 members 包，命令如下：
#apt-get install members

#查看某个用户组下所有用户命令如下：
#members <group>

#例如查看 sudo 用户组下的所有用户，即拥有 root 权限的用户：
#members sudo


