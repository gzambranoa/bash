#!/bin/bash

if [ -z "$1" ]; then
	echo "No indicó su nombre es obligatorio."
	echo "Cuál es su nombre?"
	read nombre
	if [ -z "$nombre" ]; then
		echo "Proceso cancelado, no se recibió el nombre"
		exit
	#else
	#	echo "Nombre seleccionado II: $1"
	fi
else
	echo "Nombre seleccionado I: $1"
fi


opciones="Amarillo Azul Rojo Verde Salir"



echo -e "\e[96mIndique su color deseado, por favor\e[0m"
select color in $opciones
do
	if [ $color = "Amarillo" ]; then
		echo -e "\e[33m$nombre\e[0m"

	elif [ $color = "Azul" ]; then
		echo -e "\e[34m$nombre\e[0m"

	elif [ $color = "Rojo" ]; then
		echo -e "\e[31m$nombre\e[0m"

	elif [ $color = "Verde" ]; then  
		echo -e "\e[32m$nombre\e[0m"

	elif [ $color = "Salir" ]; then
		echo -e "\e[32mBye! $nombre\e[0m"
		exit
	fi
done

