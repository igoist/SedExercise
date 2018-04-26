#!/bin/bash

trap ctrl_c INT

echo "┌─────┬────┬──────┬───────┬────────┬─────────┬────────┬─────┬───────────┬────────┬──────────┐"
echo "├─────┼────┼──────┼───────┼────────┼─────────┼────────┼─────┼───────────┼────────┼──────────┤"
echo "│ liv │ 1  │ fork │ 20649 │ online │ 3       │ 8s     │ 0%  │ 84.0 MB   │ Egoist │ disabled │"
echo "└─────┴────┴──────┴───────┴────────┴─────────┴────────┴─────┴───────────┴────────┴──────────┘"

echo "** Test"
echo "** Test"
echo "** Test"
echo "** Test"

function ctrl_c() {
  echo "** User stopped the process with CTRL-C"
  exit $?
}

igoist='igoist'

echo 'username: '${igoist:0:2}', length: '${#igoist}'.'
echo "username: ${igoist}, length: ${#igoist}, pid: $$."
echo "param num: $#, $-, $?"
# echo `expr index "$igoist" oi`

i=0

echo $i
for file in `ls`
do
 # sleep 1
 # echo "..."
 # "..., ..., ..." | log_parser
 echo ${file}
 array[i]=${file}
 i=`expr ${i} + 1`
done

echo ${array[@]}
