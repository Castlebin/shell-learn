#!/bin/bash
# filename: function.sh

function list_func_args() {
	echo 1: $1, $2
	echo 2: "$@"
	echo 3: "$*"
	
	return 0
}

list_func_args wo ai ni, dan wo bu gan shuo chu kou

