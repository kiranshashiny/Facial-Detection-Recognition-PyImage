#!/usr/local/bin/python3

import os.path
from datetime import datetime


total = 1

now = datetime.now() # current date and time
output="shashi"
while True:
	date_time = now.strftime("%m-%d-%Y")
	#print("date and time:",date_time)
	date_time = date_time+"-"+str(total).zfill(5)
	#print("date and time:",date_time)

	#p = os.path.join(output, "{}.png".format(str(total).zfill(5)))

	p = os.path.join(output, "{}.png".format(str(date_time)))

	print (p)
	total +=1
	
	if ( total > 5):
		break


