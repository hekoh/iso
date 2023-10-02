echo "MENU DE COMANDOS"
while true
do
select ej in $(ls *.sh) salir
do
	case $ej in
	"salir")
		exit 0
	;;
	*)
		cat ${ej} |grep '#'
		echo "ingrese los parametros (si se requiriera alguno)"
		read param
		./${ej} $param
		break 1		#vuelve a el while e imprime la lista de .sh
	;;
	esac
done
done
