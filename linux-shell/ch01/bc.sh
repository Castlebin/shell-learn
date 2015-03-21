#!/bin/bash
# filename: bc.sh

echo "4 * 0.23" | bc

echo "scale=2;3/8" | bc # 打印出.37 好凶残，0被去掉了
echo "scale=2;12/8" | bc # 打印出1.50
echo "scale=2;5.0153" | bc # 原装打印，没有任何四舍五入或者截断

no=100
echo "obase=2;$no" | bc #将100按照二进制打印出来
echo "obase=10;ibase=2;$no" | bc #将100按照二进制表示，打印出它的十进制值

echo "sqrt(100)" | bc # Square root
echo "10 ^ 10" | bc # Square

