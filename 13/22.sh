num=(10 3 5 7 9 3 5 4)

productoria(){
total="1"
for elem in ${num[@]} 
do
	total=$(expr ${total} \* $elem)	
done
echo "el total es:"${total}
}

productoria
