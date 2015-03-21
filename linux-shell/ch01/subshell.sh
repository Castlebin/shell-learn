#!/bin/bash
# filename: subshell.sh

pwd
(cd ~; ls -la)
pwd

output=$(ls -la)
echo $output

output="$(ls -la)"
echo $output

