#debe recibir uno o mas archivos como parametro
#renombrara dichos archivos agregandole una cadena ingresada por teclado
#Esta sera agregada adelante segun la opcion "-a" o atras con "-b"

renombrar(){
#Debe recibir como primer parametro la cadena a agregar
#Y como segundo la lista de argumentos
	args=("$@")			#lista de argumentos ingresados
	lista=($(ls  ${args[0]}))	#subdirectorios dentro de la carpeta ingresada
	echo "${lista[@]}"
	for((i=0; i<${#lista[@]}; i++)) do
		if [ "${args[1]}" = "-a" ] 
		then
			name=$(find -name ${lista[$i]})${args[2]}
		else
			name=${args[0]}"/"${args[2]}${lista[$i]}
		fi
		mv -v $(find -name ${lista[$i]}) $name
			
	done	
	}
	
renombrar $@ 
	
