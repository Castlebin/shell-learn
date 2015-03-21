#!/bin/bash
# filename: watchdir.sh
# 用途：监视目录访问

path=$1

inotifywait -m -r -e create,move,delete,access,modify,open $path -q


