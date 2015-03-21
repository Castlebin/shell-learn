#!/bin/bash
# filename: printf.sh

printf "%-5s %-10s %-4s\n" No. Name Mark # 如果指定了错误的格式的话，会报错，比如如果为此行的Mark指定为%-4.2f，执行时会告知格式错误，打印出来则会是0.00
printf "%-5s %-10s %-4.2f\n" 1 Sarathddddddddddddddddd 80.3456 # 超过指定宽度不会被截断
printf "%-5s %-10s %-4.2f\n" 2 James 90.9999 # 数字会被指定精度上四舍五入
printf "%-5s %-10s %-4.2f\n" 3 Jeff 67.03345 
 

