#!/bin/bash
# filename: debug2.sh

function DEBUG() {
	[ "$_DEBUG" == "on" ] && $@ || :
}

for i in {1..10}
do
	DEBUG echo $i
done


