#!/bin/bash
# filename: echo.sh

echo "Hello World!"
echo "Hello World\!"
echo -e "Hello World\!，我爱夏天！"

echo -e "\e[1;31m This is red text! \e[0m"
echo -e "\e[1;42m Green Background \e[0m"

fruit=apple
number=5
echo "We have $number $fruit(s)"

length=${#fruit}    # shell脚本中变量用大括号括起来{}
echo $length    # shell脚本中变量取值用$符号
echo ${#fruit}  # #var 是var的一个特殊变量，代表var变量的长度


