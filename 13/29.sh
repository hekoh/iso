#!/bin/bash

array=($(sudo find /home -name "*.doc"))

verArchivo(){
	found=0
	for elem in ${array[@]}; do
		echo $elem
	if [ $elem = $1 ]; then
		found=1
		echo "el archivo se encuentra en el arreglo"
		break 2
	fi
	done
	if [ $found -eq 0 ]; then
		echo "archivo no encontrado"
		exit 5
	fi
}

cantidadArchivos(){
	echo $(sudo find /home -name "*.doc" | wc -l)
}

borrarArchivo(){
	pos=0
	found=0
	for elem in ${array[@]}; do
	if [ $elem = $1 ]; then
		found=1
		echo "quiere eliminar el archivo logicamente?"
		select option in si no; do
			case $option in 
			"si") 
				unset array[$pos]
				echo "archivo eliminado de arreglo"
				break 3
			;;
			"no")
				rm ${array[$pos]}
				unset array[$pos]
				echo "archivo eliminado fisica y logicamente"
				break 3
			;;
			esac
		done
	fi
	let pos++
	done
	if [ found = 0 ];then
		echo "archivo no encontrado"
		exit 10
	fi
}

echo ${array[@]}
cantidadArchivos
verArchivo /home/luca/5.doc
borrarArchivo /home/luca/5.doc
verArchivo /home/luca/5.doc
cantidadArchivos
