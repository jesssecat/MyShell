#!/bin/bash
if expr "$1" : ".*\.sh" &>/dev/null
  then
    echo "you are using $1"
  else
    echo "pls use *.sh file"
fi
