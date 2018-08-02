#!/bin/bash
i=2
expr $i + 0  &>/dev/null
echo $?
