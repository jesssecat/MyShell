#!/bin/bash
wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz

tar -zxvf Python-3.6.3.tgz -C /usr/local/
mv /usr/local/Python-3.6.3/ /usr/local/python3
cd /usr/local/python3/
yum install -y gcc zlib zlib-devel
./configure -with-ssl
echo "-----------------code------------------:"$?
make && make install
echo "-----------------code------------------:"$?
which python
which python3
#a=`pwd`/Python-3.6.3.tgz
#rm -rf $a
python3
exit()
