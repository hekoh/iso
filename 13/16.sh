#!/bin/bash
#recibe como paremetro una extension e indica la cantidad de archivos con esa
#extension, clasificado por usuario dueño del archivo


users=($(sudo cat /etc/passwd | cut -d: -f1))
for user in ${users[@]};
do
	cant=$(sudo find /home -user ${user} -name "*$1" | wc -l)
	echo "extension: ${1}	usuario: ${user}   cantidad: ${cant}">>reporte.txt
done

exit 0
