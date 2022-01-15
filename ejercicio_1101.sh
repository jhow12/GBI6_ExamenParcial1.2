#!/bin/bash
Ejercicio 1.10.1

#El numeral  1 nos pide que cambiemos de directorio

#Desde el directorio principal (Para mi caso)

 cd Documents/2002/CSB/unix/sandbox #cd nos permite movilizar entre directorios


################################

# 2) Cual es el tamaño del archivo Marra2014_data?

ls -lh ../data/Marra2014_data.fasta

#-l informa el tamaño del archivo. Se agrega -h para
# hacer facil su lectura

# nos devuele
#-rw-r--r-- 1 Cliente 197121 553K Jan 28  2019 ../data/Marra2014_data.fasta

##########################################

# 3) Crea una copia de Marra2014_data.fasta en el
#sandbox y asígnar el nombre mi_archivo.fasta

cp ../data/Marra2014_data.fasta mi_archivo.fasta

#cp se usa para copiar un archivo

###############################################

# 4) ¿Cuántos contigs se clasifican como
# isogrupo00036?

grep -c isogroup00036 mi_archivo.fasta

#nos da  como valor 16

# grep -c cuenta las veces que  se tiene la palabra


################################################
# 5) Reemplace el delimitador original de "dos espacios"
# con una coma.
head -n 3  mi_archivo.fasta
cat mi_archivo.fasta | tr -s ' ' ','

#cat para imprimir el archivo, tr para sustituir los espacios

>contig00001,length=527,numreads=2,gene=isogroup00001,status=it_thresh

###########################################

#6) ¿Cuántos isogrupos únicos hay en el archivo?
##Extraemos
grep '>' mi_archivo.fasta | tr -s ' ' ',' | cut -d ',' -f 4 | sort | uniq | wc -l

#se usa grep '>' para poder extraer todas las lineas con informacion del archivo  , cut
#lo que quiere decir que me extraiga las lineas con informacion de mi archivo , convierte mi dato 4 en columnas ,
#identifica mis elementos y ordenalos.

###############################################
#7) ¿Qué contig tiene el mayor número de lecturas?
#  ¿Cuántas lecturas tiene?

$ grep '>' mi_archivo.fasta | tr -s ' ' ',' | cut -d ',' -f 1,3 | sort -t '=' -k 2 -n -r | head -n 1
#>contig00302,numreads=3330
#se usa grep grep '>' para poder extraer todas las lineas con informacion del archivo  ,
#cut toma mi fila 1 y 3
#sort -t para dividir mi informacion segun el signo igual
#toma la segunda columna
# -n ordena  numericamente
#-r ordena al inverso
#lo que quiere decir que me extraiga las lineas con informacion de mi archivo , conviete mis datos 1 y
#3 en columnas  toma mi segunda  columna ordenala numericamentte y al inverso,
#identifica mis elementos y ordenalos.
