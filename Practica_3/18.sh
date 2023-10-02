while true
do
	aux=$(users | grep -c $1)
	if  [ $aux -ne 0 ]
	then
		echo "Usuario $1 logueado en el sistema"
		break 2
	fi
	sleep 10
done
