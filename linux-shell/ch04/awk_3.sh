#!/bin/bash
# filename: awk_3.sh
# 用途：测试awk的功能, 计算出1+2+3+...+n的值
# n为输入文件的文本内容行数

 awk 'BEGIN { sum=0 } { print NR"+" ; sum+=NR  } END{print "sum="sum}' awk_3.sh

