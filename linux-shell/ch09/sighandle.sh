#!/bin/bash
# filename: sighandle.sh

function handler() {
	echo "Hey, received signal: SIGINT."
}

echo "My Process ID is $$"

trap 'handler' SIGINT	# 本脚本中将handler函数和SIGINT信号量绑定在一起

while true; do
	sleep 1
done


