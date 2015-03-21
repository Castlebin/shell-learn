#!/bin/bash
# filename: fetch_gmail.sh
# 用途：使用脚本读取Gmail

read -p "Please input your Gmail usename: " username
echo -n "Please input your password: "
read -s password  # -s 选项代表不回显

SHOW_COUNT=5

curl -u $username:$password --silent "https://mail.google.com/mail/feed/atom" |\ 
tr -d '\n' | sed 's:</entry>:\n:g' |\
	sed 's/.*<title>\(.*\)<\/title.*<author><name>\([^<]*\)<\/name><email>\([^<]*\).*/Author: \2 [\3] \nSubject: \1\n/' |\
	head -n $(( $SHOW_COUNT * 3 ))

