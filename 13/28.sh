#!/bin/bash
escritura=0
lectura=0
if [ -d $1 ]; then
	array=($(ls $1)) 
	for elem in ${array[@]}; do
		if [ -w "$1/$elem" ]; then
			let escritura++
		fi
		if [ -r "$1/$elem" ]; then
			let lectura++
		fi
	done
	echo "la cantidad de archivos con permisos de lectura son: $lectura"
	echo "la cantidad de archivos con permisos de escritura son: $escritura"
fi
	
