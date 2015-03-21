#!/bin/bash
# filename: root_or_not.sh

if [ $UID -ne 0 ]; then
	echo "Your're not the root user."
else
	echo "root user!"
fi


