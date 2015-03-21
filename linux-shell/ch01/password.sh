#!/bin/bash
# filename: password.sh

echo -e "Enter password:"
stty -echo
read password
stty echo

echo
echo Password is Read.
echo password is $password

