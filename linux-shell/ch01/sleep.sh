#!/bin/bash
# filename: sleep.sh

echo -n "Count: "
tput sc # 存储光标当前所在位置

count=0
while true; do
	if [ $count -lt 10 ]; then
		echo -n $count
		let count++
		sleep 1
		tput rc # 恢复光标位置为上一次存储的位置
		tput ed # 清除掉光标所在位置到行尾的所有内容
	else
		exit 0
	fi
done

