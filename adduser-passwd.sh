#!/bin/bash
. /etc/init.d/functions
user="jesse"
#passfile="/tmp/user.log"
rm -rf /tmp/user.log
for num in `seq -w 11 15`
do
    pass="`echo "test$RANDOM"|md5sum|cut -c3-11`"
    #useradd $user$num &>/dev/null &&\
    #echo -e "user:$user$num --stdin $user$num &>/dev/null &&\"
    echo -e "user:$user$num\tpasswd:$pass">>$passfile
    if [ $? -eq 0 ]
       then
         action "$user$num is ok" /bin/true
    else
         action "$user$num is ok" /bin/true
    fi
done
echo ----------------
#cat $passfile && >$passfile
cat $passfile
