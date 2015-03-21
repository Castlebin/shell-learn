#!/bin/bash
# filename: word_freq.sh
# 用途：统计文件中单词词

if [ $# -ne 1 ]; then
	echo "Usage: $0 filename"
	exit -1
fi

filename=$1
grep -E -o "\b[[:alpha:]]+\b" $filename | \
	awk '{ count[$0]++ }
		END { printf("%-15s%s\n", "Word", "Count")
			for(index in count)
			{ printf("%-15s%d\n", index, count[index]) }
		}'

