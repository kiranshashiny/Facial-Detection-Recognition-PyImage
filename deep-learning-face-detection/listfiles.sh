

fileslist=`ls /Users/shashikiran/nodetest/Facial-Detection-Recognition/opencv-face-recognition/images`

for file in $fileslist
do
	#echo  $file
	loc="/Users/shashikiran/nodetest/Facial-Detection-Recognition/opencv-face-recognition/images/"
	#echo  $loc$file
	python3 detect_faces.py --prototxt deploy.prototxt.txt \
		--model res10_300x300_ssd_iter_140000.caffemodel \
	--image $loc$file
done




