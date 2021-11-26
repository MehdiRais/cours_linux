#!/bin/bash

echo "Entrer un calcul a 2 valeurs. Exemple a + b"
echo "Operateurs disponibles = (+, /, x)"

read var1 operateur var2

if [ $# -ne 3 ]	; then
	echo "Nombre d'argument invalide"
	exit 1
fi

if [ $operateur = "+" ] ; then
	echo $(($var1 + $var2))
elif [ $operateur = "x" ] ; then
	echo $(($var1 * $var2))
elif [ $operateur = "/" ] ; then
	if [ $var2 -ne "0" ] ; then
		echo $(($var1 / $var2))
	else 
		echo "Division par zero"
	fi
fi
