python3 recognize_movie.py --detector face_detection_model \
	--embedding-model openface_nn4.small2.v1.t7 \
	--recognizer output/recognizer.pickle \
	--le output/le.pickle \
 	--movie moviesdir/sunitha_walking_12Sep.mp4

#--movie moviesdir/shashi_movie.mov
# works	--movie moviesdir/chandrakala_walkingsteps.mp4
# this works - as its indoor and mac Camera	--movie moviesdir/sunitha_movie.mov
# --movie cctvdir/30_01_M_092019115201.avi
#	--movie cctvdir/45_01_M_092019124215.avi
#	--movie cctvdir/44_01_M_092019124153.avi
#	--movie cctvdir/41_01_M_092019123918.avi
#--movie cctvdir/40_01_M_092019123859.avi
