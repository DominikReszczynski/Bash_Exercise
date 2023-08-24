#!/bin/bash
imie=$1
nazwisko=$2
rokUrodzenia=$3
nazwaPliku=$4
echo $imie $nazwisko $rokUrodzenia > daneUser.txt
if [ -z $imie ]
then

	read -p "podaj:" imie
fi

if [ -z $nazwisko ]
then
	read -p "podaj: " nazwisko
fi

if [ -z $rokUrodzenia ]
then
	read -p "podaj: " rokUrodzenia
fi

if [ -z $nazwaPliku ]
then
	read -p "podaj nazwę pliku:" nazwaPliku
fi
echo $imie $nazwisko $rokUrodzenia > $nazwaPliku.txt
echo "Witaj $imie $nazwisko twój rok urodzenia to $rokUrodzenia"

silnia=1
i=1
let ilosclat=2023-$rokUrodzenia
while ((i<=ilosclat)); do
	let silnia*=i
	i=$[i+1]
done
echo "masz lat $ilosclat"
