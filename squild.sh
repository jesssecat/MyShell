#!/bin/bash
yum -y install squid
cp /etc/squid/squid.conf /etc/squid/squidconfbak
echo ''>/etc/squid/squid.conf
cat << EOF >/etc/squid/squid.conf
http_port 0.0.0.0:3712
cache_mem 64 MB
maximum_object_size 4 MB
cache_dir ufs /var/spool/squid 100 16 256
access_log /var/log/squid/access.log
http_access allow all
visible_hostname squid.chao
EOF
systemctl start squid
