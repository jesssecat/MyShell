#!/bin/bash
echo 1.[install lamp]
echo 2.[install lnmp]
echo 3.[exit]
echo “PATH路径打印：”$PATH
echo "input installed service number:"
read id
[ "$id" -eq "1" ] &&{
  echo install lamp
}
[ "$id" -eq "2" ] &&{
  echo install lnmp
}
[ "$id" -eq "3" ] &&{
  echo "退出成功"
  exit 0
}
