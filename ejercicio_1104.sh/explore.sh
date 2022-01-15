#!/bin/bash
# nuestra carpeta data $1
# el numero de columna  $2
colum=`cut -d ',' -f $2 $1 | head -n 1`
echo "Nombre de la columna:" $colum > explore.txt

Vald=`cut -d ',' -f $2 $1 | tail -n +2 | sort | uniq |wc -l`

echo "Numero de valores distintos:" $Vald >> explore.txt

Valmin=`cut -d ',' -f $2 $1 | tail -n +2 | sort -n | head -n 1`
echo "Valor minimo:" $Valmin >> explore.txt

Valmax=`cut -d ',' -f $2 $1 | tail -n +2 | sort -n -r | head -n 1`
echo "Valor max:" $Valmax >> explore.txt

