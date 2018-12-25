#/bin/bash
#set -e
fdisk -l
fdisk /dev/vdb
#备注先根据fdisk -l查看硬盘是否存在获取名称：例如：/dev/vdb
#进入硬盘
#分盘配置：依次输入p n p 2 w
#第一次输入p进入分区
#第二次输入n创建新的分区
#第三次选中p
#第四次输入编号1 并回车两次写入配置
#第五次输入w
df -h
fdisk -l
sleep 2
mkfs.ext4 /dev/vdb2
sleep 2
echo $?
partprobe
mkdir /data
mount /dev/vdb2 /data
sleep 1
df -h
echo '/dev/vdb2               /data                   ext4    defaults        0 0' >>/etc/fstab
blkid