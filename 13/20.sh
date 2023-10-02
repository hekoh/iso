#simula el comportamiento de una pila permitiendo 4 operaciones:
#push	pop	length	 print

pila=()

push(){
	pila[${#pila[@]}]=$1
}

pop(){
	unset pila[${#pila[@]}-1]
}

length(){ 
	echo "la longitud de la pila es: "${#pila[@]}
}

print(){
	echo ${pila[@]}
}

while true
do
select fn in push pop length 'print' salir
do
	case $fn in
	"salir")
	exit 0
	;;
	"push")
	echo "ingrese el valor a pushear"
	read var
	push $var
	break 1
	;;
	*)
	${fn}
	break 1
	;;
	esac
done
done


