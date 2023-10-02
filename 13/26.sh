#!/bin/bash
args=($@)
cant=0
for ((i=0; i < ${#args[@]}; i=i + 2))
do
	./13_b.sh ${args[i]}
	if [ $? -eq 1 ]
	then
		cant=$(expr $cant + 1)
	fi
done
echo "la cantidad de archivos inexistentes es de: $cant"
exit 0		
