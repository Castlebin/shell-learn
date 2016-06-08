#!/bin/bash
# filename: write_to_db.sh 

USER="root"
PASS="123456"

depts=`mysql -u $USER -p$PASS school <<EOF | tail -n +2
SELECT DISTINCT dept FROM student;
EOF`

for d in $depts;
do
echo Department : $d
result="`mysql -u $USER -p$PASS school <<EOF
SET @i:=0;
SELECT @i:=@i+1 as rank,name,mark FROM student WHERE dept="$d" ORDER
BY mark DESC;
EOF`"

echo "$result"
echo

done

