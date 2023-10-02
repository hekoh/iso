#!/bin/bash
inicializar(){
	array=()
}

agregar_elem(){
	array[${#array[@]}]=$1
}

eliminar_elem(){
	if [ $1 -lt ${#array[@]} ]; then
		unset array[$1]
	fi
}

longitud(){
	echo ${#array[@]}
}

imprimir(){
	echo ${array[@]}
}

inicializar_con_valores(){
	array=()
	for ((i=0; i<$1;i++));do
		array[$i]=$2
	done
}

inicializar
inicializar_con_valores 5 9
longitud
agregar_elem "?"
imprimir
eliminar_elem 5
imprimir










