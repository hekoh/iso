#permite seleccionar entre 3 acciones diferentes
#no requiere parametros
select action in Listar DondeEstoy QuienEsta
do
	case $action in
	"Listar")
		ls -l
		break
	;;
	"DondeEstoy")
		pwd
		break
	;;
	"QuienEsta")
		who
		break
	;;
	esac
done
