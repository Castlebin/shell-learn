#!/bin/bash
# filename: success_test.sh

CMD="ls -la"
status
$CMD

if [ $? -eq 0 ]; then
	echo "$CMD executed successfully."
else
	echo "$CMD executed fail."
fi


