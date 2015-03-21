#!/bin/bash

cat ~/pg35.txt |  (
	while read line; do
		for word in $line; do
			echo $word
		done
	done
)

