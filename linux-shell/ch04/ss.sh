#!/bin/bash

cat ~/pg35.txt |  (
	while read line; do
		echo $line
	done
)

