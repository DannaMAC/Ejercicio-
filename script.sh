#!/bin/bash

nombre="Luis"
edad=32

echo $nombre 
echo $edad

arreglo=(uno dos tres)
echo ${arreglo[*]}

#edad++
edad+=1
echo $edad
arreglo[3]='cuatro'
echo ${arreglo[*]}

echo "Mi nombre es $nombre y tengo $edad "
echo "El arreglo en la posicion 1 tiene ${arreglo[1]}"

#Operaciones aritmeticos 
#+,-,*,/

n1=6
n2=3
n3=$((n1*n2))
echo "El resultado es $n3"

#Operadores comparativos 
#<(/lt), >(-gt), <=(-le),>=(-ge), ==(-eq), !=(-ne)
#-n (not null) -z(null)

#Estrutura de control, condicionales IF

if [[ $n1 > $n2 ]]; then
	echo "$n1 es mayor que $n2"
else 
	echo "$n2 es mayor que $n1"
fi

if [ $n1 -gt $n2 ]; then
	echo "$n1 es mayor que $n2"
else 
	echo "$n2 es mayor que $n1"
fi

#Operaciones con archivos 
#-e Si existe un archivo 
#-f Si es un archivo pero no una carpeta 
#-s Si el archivo no esta vacio
#-d Si es una carpeta 
#-r -w -x Si se puede leer, escribir o ejecutar 

file="./file.txt"

if [ -d $file ]; then  
	echo "$file exite y es una carpeta"
else
	echo "$file no existe o no es una carpeta"
fi

#Operadores logicos 
# and(&&) or (||) 

if [ -r $file ] && [ -x $file ]; then  
	echo "El archivo tiene permisos de X y R $file"
else
	echo "EL archivo no tiene permisos de X y R $file"
fi

#condicionales Case

#saludo="Hola"
echo "el arreglo en 1 = $1"
case $1 in 
	hola )
	echo "Bienvenido al sistema"
	    ;;
	adios|bye )
	echo "Adios =c"
	    ;;
	* )
	echo "No entendi"
	    ;;
esac

#Estructuras de control repetitivas 
#while 

user=""

while [[ $user != "admin" ]]; do
	read -p "Cual es tu rol en el sistema " user 
done

#for 

for (( i = 0; i < 10; i++ )); do
	echo "El numero es $i"
done

invitados=(pedro juan david lulu maria ivan)

for invitado in ${invitados[@]}; do
	echo "Hola $invitado"
done
#Funciones 

suma(){
	echo "Hola desde la funcion sumar"
}

suma

resta(){
	echo $(( $1 - $2 ))
}

total=$(resta 9 4)
echo "El resultado es $total"









