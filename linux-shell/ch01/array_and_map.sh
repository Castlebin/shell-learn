#!/bin/bash
# filename: array_and_map.sh

array_var=(1, 2, 3, 4, 5, 6, 7)
echo ${array_var[*]}
echo ${array_var[@]}
echo ${array_var[0]}
echo ${!array_var[*]}

# map
declare -A ass_array
ass_array[apple]="100dollars"
ass_array[orange]="99 yuan"
echo ${ass_array[*]}
echo ${ass_array[apple]}
echo ${!ass_array[*]}

echo 我爱夏天
