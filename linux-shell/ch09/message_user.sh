#!/bin/bash
# filename: message_user.sh
# 用途：向指定用户的终端发送消息
# useage: ./message_user.sh USERNAME < message.txt

USER=$1
devices=`ls /dev/pts/* -l | awk '{ print $3,$10 }' | grep $USER | awk '{ print $2 }'`

echo devices:
echo $devices;

for dev in $devices
do
	cat /dev/stdin > $dev
done

