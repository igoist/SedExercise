#!/bin/bash

trap ctrl_c INT

echo "┌─────┬────┬──────┬───────┬────────┬─────────┬────────┬─────┬───────────┬────────┬──────────┐"
echo "├─────┼────┼──────┼───────┼────────┼─────────┼────────┼─────┼───────────┼────────┼──────────┤"
echo "│ liv │ 1  │ fork │ 20649 │ online │ 3       │ 8s     │ 0%  │ 84.0 MB   │ Egoist │ disabled │"
echo "└─────┴────┴──────┴───────┴────────┴─────────┴────────┴─────┴───────────┴────────┴──────────┘"

a='aaaaa'
b='bbbb'
c='ccc'
d='dd'
e='e'

s='──────────'

blue="\033[1;34m"
end="\033[0m"

echo -e "${blue}"
printf "┌%-10s┬%-10s┬%-10s┬%-10s┬%-10s┐\n" ${s} ${s} ${s} ${s} ${s} # header
printf "├%-10s┼%-10s┼%-10s┼%-10s┼%-10s┤\n" ${s} ${s} ${s} ${s} ${s} # ssssss
printf "│%-10s│%-10s│%-10s│%-10s│%-10s│\n" ${a} ${b} ${c} ${d} ${e}
printf "├%-10s┼%-10s┼%-10s┼%-10s┼%-10s┤\n" ${s} ${s} ${s} ${s} ${s} # ssssss
printf "│%-10s│%-10s│%-10s│%-10s│%-10s│\n" ${a} ${b} ${c} ${d} ${e}
printf "└%-10s┴%-10s┴%-10s┴%-10s┴%-10s┘\n" ${s} ${s} ${s} ${s} ${s} # footer
# echo -e  "\033[0m"
echo -e "${end}"

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

# echo ${array[@]}

a=10
b=20

# if [ ${a} -eq ${b} ]
# then
#   echo "${a} -eq ${b}"
# else
#   echo "${a} -ne ${b}"
# fi

# if [ ${a} -ne ${b} ]
# then
#   echo "${a} -ne ${b}: t"
# else
#   echo "${a} -ne ${b}: f"
# fi

if [ ${a} -ge ${b} ]
then
  echo "${a} -ge ${b}: t"
else
  echo "${a} -ge ${b}: f"
fi

result=$[ a + b ]
echo "${result}"

echo -e "\033[30m 黑色字 \033[0m"
echo -e "\033[31m 红色字 \033[0m"
echo -e "\033[32m 绿色字 \033[0m"
echo -e "\033[33m 黄色字 \033[0m"
echo -e "\033[34m 蓝色字 \033[0m"
echo -e "\033[35m 紫色字 \033[0m"
echo -e "\033[36m 天蓝字 \033[0m"
echo -e "\033[37m 白色字 \033[0m"


echo -e "\033[40;37m 黑底白字 \033[0m"
echo -e "\033[41;37m 红底白字 \033[0m"
echo -e "\033[42;37m 绿底白字 \033[0m"
echo -e "\033[43;37m 黄底白字 \033[0m"
echo -e "\033[44;37m 蓝底白字 \033[0m"
echo -e "\033[45;37m 紫底白字 \033[0m"
echo -e "\033[46;37m 天蓝底白字 \033[0m"
echo -e "\033[47;30m 白底黑字 \033[0m"
