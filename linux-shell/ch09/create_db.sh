#!/bin/bash
# filename: create_db.sh 

USER="root"
PASS="123456"

mysql -u $USER -p$PASS <<EOF 2> /dev/null
CREATE DATABASE school;
ALTER DATABASE school character set utf8mb4 collate utf8mb4_general_ci;
EOF
[ $? -eq 0 ] && echo Create DB school || echo DB school already exist

mysql -u $USER -p$PASS school <<EOF 2> /dev/null
CREATE TABLE student (
	id int primary key,
	name varchar(64),
	mark int,
	dept varchar(4)
);
EOF
[ $? -eq 0 ] && echo Create table student || echo table student already exist

mysql -u $USER -p$PASS school <<EOF
delete from student;
EOF

