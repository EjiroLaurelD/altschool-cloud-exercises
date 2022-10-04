#!/bin/bash
time=($date +%H:%M)
file=/home/vagrant/memory-logs/dailylogs.sh


#creat file and run follwing commands in file using cronjob
touch $file
echo "This is your report for:" >> $file
date >> $file 
free -h >> $file
echo "***********************" >> $file
echo " " >> $file

#if [[ {$time} == 14:08 ]]; then
#	echo "Report for the day" | mail -s "DAILY MEMORY REPORT FOR $date" ejiro.laureld@gmail.com < $file && rm $file
#else 
	:
#fi

#if (($time == 00000));then
#echo "The memory log for today is" echo (cat $file)
#rm -rf $file

#send to email specified in file

#echo $(cat dailylogs.sh) 
