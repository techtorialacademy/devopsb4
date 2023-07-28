cd $1

for file in *
do
   echo "-----------------START OF A FILE--------------------"
   if [ -f "$file" ]
   then
      echo "File name: $file"
      echo "File size: $(du -sh $file | cut -f1)"
      echo "Last modified date: $(date -r $file)"
   else
      echo "This $file is not a regular file"
   fi
   echo "-----------------END OF A FILE--------------------"
done
