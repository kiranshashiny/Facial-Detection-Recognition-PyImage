#!/bin/bash

if [ "$#" -eq 0 ]
then
	
	echo "" 
	echo "	Error : Please enter the folder to output the images"
	echo "	Edit this file e.g;  --dataset/shashi"
	echo "	Exiting ! "
	echo ""
	exit
fi
if [ $# == 1 ]
then
	echo $1
	if [ ! -d $1 ]
	then
		echo "Directory $1 does not exist"
		echo "Exiting"
	else
		#echo "Directory exists - using it to store new images."
		python3 build_face_dataset.py --cascade haarcascade_frontalface_default.xml  --output $1
	fi

fi

