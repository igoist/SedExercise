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


for key in [1, 2, 3]
do
 sleep 1
 echo "..."
done
