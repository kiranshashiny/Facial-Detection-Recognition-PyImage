#!/bin/bash

if [ "$#" -eq 0 ]
then
	
	echo "" 
	echo "	Error : Please enter the folder to output the images"
	echo "	./build_dataset.sh  dataset/shashi"
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
		echo "Press 'k' to create new images, and press 'q' to exit"
		echo "Focus on the image while pressing keys"
		python3 build_face_dataset.py --cascade haarcascade_frontalface_default.xml  --output $1
	fi

fi

