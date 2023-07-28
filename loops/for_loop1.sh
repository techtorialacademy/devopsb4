# we could get a range of elements  from 1 to 5
for num in {1..5}
do
   echo "$num"
done

#WAY2 
for number in $(seq 1 5)
do 
   echo "$number"
done 
