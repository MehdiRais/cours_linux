#!/bin/bash


while [ 1 ] ; do

echo "Entrer un calcul a 2 valeurs. Exemple a + b"
echo "Operateurs disponibles = (+, /, x)"
read var1 operateur var2

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

echo "Voulez-vous effectuer une autre opération ? (y/n)"
read test_fin
if [ $test_fin = "n" ] ; then
	exit
fi	

done
