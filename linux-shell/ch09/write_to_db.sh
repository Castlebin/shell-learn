#!/bin/bash
# filename: write_to_db.sh 

USER="root"
PASS="123456"

if [ $# -ne 1 ];
then
	echo $0 DATAFILE
	echo
	exit 2
fi
data=$1
while read line;
do
	oldIFS=$IFS
	IFS=,
	values=($line)
	values[1]="\"`echo ${values[1]} | tr ' ' '#' `\""
	values[3]="\"`echo ${values[3]}`\""
	query=`echo ${values[@]} | tr ' #' ', ' `
	IFS=$oldIFS

	mysql -u $USER -p$PASS school <<EOF
INSERT INTO student VALUES($query);
EOF
done< $data
echo Wrote data into DB
