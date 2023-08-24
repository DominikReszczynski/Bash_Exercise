#!/bin/bash

numerDnia=$1
miesiac=$2

if [ -z $numerDnia ] || [ -z $miesiac ]
then
	read -p "Podaj numer dnia: " numerDnia
	read -p "podaj numer miesiąca: " miesiac
elif [ -z $miesiac]; then
	read -p "podaj miesiac: " miesiac
fi
# -lt mniejszy od , -gt większy niż , ! $miesiac =~ ^[0-9]+$ miesiąc musi być zapisana jako liczba od 0 do 9
#=~ to jest porównywanie
#^[0-9]+$ powienien się składać tylko z cyfr od 0-9 i nie może zawierać innych znaków jak spacje czy litery
#negacja na początku gdy mieisąc jest nie składa się tylko z cyfr od 0-9
if [[ ! $miesiac =~ ^[0-9]+$ ]] && [[ $miesiac -lt 1 ]] && [[ $miesiac -gt 12 ]]; then
	echo "ERROR: numer miesiąca"
elif [[ ! $numerDnia =~ ^[0-9]+$ ]] && [[ $numerDnia -lt 1 ]] && [[ $numerDnia -gt 31 ]]; then
	echo "ERROR: numer dnia"
fi

dzienTygodnia=$(date -d "$miesiac/$numerDnia/2023" +%A)

if [ $? -ne 0 ]; then
	echo "ERROR: tworzenie dnia tygodnia nie powiodło się :("
	echo "ERROR: tworzenie dnia tygodnia nie powiodło się :(" >> plik2.txt
fi
echo "dzień $numerDnia, miesiąc $miesiac roku 2023 to $dzienTygodnia"
echo "dzień $numerDnia, miesiąc $miesiac roku 2023 to $dzienTygodnia" >> plik1.txt




