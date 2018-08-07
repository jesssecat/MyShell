#!/bin/bash
array=(jesse jesse2 jesse3)
select name in "${array[@]}"
do
   echo $name
done
