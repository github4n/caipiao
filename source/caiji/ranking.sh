#!/bin/bash

cd /home/www/caipiao/caiji

PROC_NAME="createRanking"
ProcNumber=`ps -ef |grep -w $PROC_NAME|grep -v grep|wc -l` 
if [ $ProcNumber -le 0 ];then 
	/usr/bin/php createRanking.php 0 >/dev/null 2>&1 &
fi 











