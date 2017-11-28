#!/bin/sh
#Author:PeterYJC (yjcpeter@gmail.com)

clear
echo "Please enter the target filename:"
read file
flag=0
ls -l $file
filesize=`ls -l $file | cut -d " " -f 21`
for i in 1 2 3 4 5 6 7 8 9 10
do
    if [ $flag -eq 2 ]
    then
        echo "File $file size changed twice then exit!"
        exit
    fi
    sleep 5
    newsize=`ls -l $file | cut -d " " -f 21`
    if [ $filesize != $newsize ]
    then
        filesize=$newsize
        echo "File $file size changed!"
        flag=`expr $flag + 1`
    fi
done
    echo "Ten times over then exit!"
clear
exit
