#!/bin/bash
name=""
nazwaPliku=$1
if [ -z $nazwaPliku ]
then
	read -p "Nie podano nazwy pliku podaj ją teraz: " nazwaPliku
fi
echo $name > $nazwaPliku.txt

if [ -e $nazwaPliku.txt ]; then
	echo "istnieje"
else
	echo "nieistnieje"
fi
if [[ ":$PATH:" != *":$PWD:"* ]]; then
  export PATH=$PATH:$PWD
  echo "Dodano ścieżkę $PWD do PATH"
fi
path=$(pwd)
echo $path
if [ -d $nazwaPliku ];
then
	echo "istnieje"
	#rm -r $nazwaPliku
	mkdir $nazwaPliku
	echo $(ls) >> $nazwaPliku.txt
	mv $nazwaPliku.txt $nazwaPliku/
else
	echo "nieistenieje folder $nazwaPliku"
	mkdir $nazwaPliku
	echo $(ls) >> $nazwaPliku.txt
	mv $nazwaPliku.txt $nazwaPliku/
fi


