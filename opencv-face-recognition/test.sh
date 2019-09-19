OIFS="$IFS"
IFS=$'\n'
for file in `find dataset/guiterres -type f -name "*.jpeg"`  
do
     echo "file = $file"
done
IFS="$OIFS"
