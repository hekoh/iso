ar_par=()
ar_impar=()
ar_num=(1 2 3 4 5 8 9 15 13 136 524 1563 9876 36516 0)

for elem in ${ar_num[@]}
do
	if [ $(expr $elem % 2) -eq 0 ]
	then
	       echo $elem "es par"
      	else
		ar_impar[${#ar_impar[@]}]=$elem
	fi
done
echo "la cantidad de elementos impares es de: ${#ar_impar[@]}"
echo "estos son: ${ar_impar[@]}"
