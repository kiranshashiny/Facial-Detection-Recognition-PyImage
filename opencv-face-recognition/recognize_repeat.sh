OIFS="$IFS"
IFS=$'\n'
count=1
for file in `find dataset/jas -type f -name "*.png"`  
do
     echo "file = $file"
     #name="secy_gen" 
     #count=$((count+1))
     #newfile=secy_gen_$count.jpeg
     #echo $newfile


     python3 recognize.py --detector face_detection_model \
        --embedding-model openface_nn4.small2.v1.t7 \
        --recognizer output/recognizer.pickle \
        --le output/le.pickle \
	--image $file

done
IFS="$OIFS"
exit

#--image images/chandrakala.png
#--image images/sunitha_9_sep_2019_3.jpg
#--image images/jeevan_belliappa_facetime2.png
# 	--image images/daksh_without_glasses.png
#	--image images/daksh_with_glasses.png // does not work !
#	--image images/daksh_and_jas.png
#	--image images/shashi_facetime.png
#	--image images/sunitha_facetime.png
#	--image images/jayalakshmi.png
#	--image images/daksh_and_jas.png
