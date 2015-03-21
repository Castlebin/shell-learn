#!/bin/bash
# filename: top10_cmd.sh
# 用途：列出使用最多的10条命令

printf "COMMAND\tCOUNT\n"
cat ~/.bash_history | awk '
	{ list[$1]++ }
	END {
		for(i in list) {
			printf("%s\t%d\n", i, list[i])
		}
	}
' | sort -nrk 2 | head


