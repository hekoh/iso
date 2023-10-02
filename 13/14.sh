#debe recibir uno o mas archivos como parametro
#renombrara dichos archivos agregandole una cadena ingresada por teclado
#Esta sera agregada adelante segun la opcion "-a" o atras con "-b"

renombrar(){
#Debe recibir como primer parametro la cadena a agregar
#Y como segundo la lista de argumentos
	args=("$@")
	for((i=2; i<${#args[@]}; i++)) do
		if [ "$2" = "-a" ] 
		then
			name=${args[$i]}$1
		else
			name=$1${args[$i]}
		fi
		mv -v ${args[$i]} $name
			
	done	
	}

echo "ingrese la modifiacion a agregar"
read CADENA
select action in -a -b 
do
	case $action in
		"-a")
		renombrar $CADENA "-a" $@
		break
		;;
		"-b")
		renombrar $CADENA "-b" $@
		break
		;;
	esac
done
	
