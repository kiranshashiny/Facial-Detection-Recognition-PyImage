Still images recognition is from 
=======================================================================

All the code was from 
1. 	https://www.pyimagesearch.com/2018/09/24/opencv-face-recognition/
	register and download the entire code in one lot.

2. To build a data set you can use one of the three methods.
Press 'k' to capture the image inputs.
https://www.pyimagesearch.com/2018/06/11/how-to-build-a-custom-face-recognition-dataset/

3. Open up Facetime and capture an image.

4. Load that into images/ folder - used in recognize.sh ( add that as the image to be recognized ) 

I. First upload all the images in the dataset folder.
	e.g:
	dataset/shashi/*.png


extract.sh
step 1: Extract embeddings from the dataset.
python3 extract_embeddings.py --dataset dataset \
	--embeddings output/embeddings.pickle \
	--detector face_detection_model \
	--embedding-model openface_nn4.small2.v1.t7


Install this : python3 install scikit-learn

Step 2: Training the model from datasets.
train.sh
python3 train_model.py --embeddings output/embeddings.pickle \
	--recognizer output/recognizer.pickle \
	--le output/le.pickle

Step 3 - Recognize a image from the images folder.
recognize.sh
python3 recognize.py --detector face_detection_model \
	--embedding-model openface_nn4.small2.v1.t7 \
	--recognizer output/recognizer.pickle \
	--le output/le.pickle \
	--image images/adrian.jpg

// good one
// Recognize another good image from images folder . 
python3 recognize.py --detector face_detection_model \
	--embedding-model openface_nn4.small2.v1.t7 \
	--recognizer output/recognizer.pickle \
	--le output/le.pickle \
	--image images/trisha_adrian.jpg

// Unrecognized one
python3 recognize.py --detector face_detection_model \
	--embedding-model openface_nn4.small2.v1.t7 \
	--recognizer output/recognizer.pickle \
	--le output/le.pickle \
	--image images/patrick_bateman.jpg

// It should say "Unknown"
python3 recognize.py --detector face_detection_model \
        --embedding-model openface_nn4.small2.v1.t7 \
        --recognizer output/recognizer.pickle \
        --le output/le.pickle \
        --image images/shashi.png
