#!/bin/bash
read -p "input number: " num
case "$num" in
  1)
    echo '1';;
  2)
    echo '2';;
  [3-9])
    echo 345;;
  *)
    echo "please 1-9";;
esac
