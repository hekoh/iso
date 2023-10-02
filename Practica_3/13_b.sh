#devuelve si el nombre ingresado por parametro existe o no, y si se trata de un 
#archivo o un directorio
#requiere 1 parametro
if [ -e $1 ]; 
then
	if [ -d $1 ]; 
	then
		echo "$1 existe y es un directorio"
		exit 0
	else
		echo "$1 existe y es un archivo"
		exit 0
	fi
else
	echo "$1 no existe"
	exit 1
fi
