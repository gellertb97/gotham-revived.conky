#!/bin/bash

rm ../linux_sticker.png

distro=`python3 ./get-dist.py`
#distro='ROSA'
#echo $distro

if [ `ls -l *.png | grep $distro | awk '{print $9}' | wc -m` = 0 ]; then
	curdir=`pwd`
	ln -s "$curdir/gnulinux.png" ../linux_sticker.png
	exit
fi

file=`ls -l *.png | grep $distro | awk '{print $9}'`
curdir=`pwd`
ln -s "$curdir/$file" ../linux_sticker.png

#echo $file
