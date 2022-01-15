#!/bin/bash
#1)Imprimir el directorio de trabajo actual 
$ pwd

#2)Crear un directorio test1
$ mkdir test1

#No cambie de directorio, pero los items 4, 5 y 
#6 deben guardarse en el directorio creado en el paso 2. 

#3) Crear el archivo test1.txt

$ touch test1/test1.txt

#4) Guardar el texto Hola GBI6 en un archivo test2.txt
$ echo "Hola GBI6" > test1/test2.txt

$ cat test1/test2.txt #imprime el texto de la carpeta
Hola GBI6

#5) Guardar la instrucción print("Hola GBI6")  en el 
# archivo test1.py
$ echo print"HolaGBI6" > test1/test1.py #Guarda  el comando en el archivo

#instrucción que permite enlistar el contenido 
#(sin detalles) del directorio test1#

$ ls test1

test1.py  test1.txt  test2.txt
