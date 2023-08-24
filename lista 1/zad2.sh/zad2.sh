#!/bin/bash
cd
mkdir zadanie3
cd zadanie3
touch plik1.txt
echo "tak" > plik1.txt
touch plik2.txt
echo "nie" > plik2.txt
touch plik3.txt
echo "niewiem" > plik3.txt
mkdir lab11
mkdir lab22
mkdir lab33
mv plik1.txt lab11/
mv plik2.txt lab22/
mv plik3.txt lab33/
touch log.txt
ls -r > log.txt #przypisuje ścieżkę folderu poniżej do pliku log.txt
cat lab11/plik1.txt lab22/plik2.txt lab33/plik3.txt | wc >> log.txt #łączy pliki txt i wypisuje z nich linie słowa i znaki (ilość) i zapisuje w pliku log.txt
touch suma.txt
cat lab11/plik1.txt lab22/plik2.txt lab33/plik3.txt > suma.txt #zapisuje tekst z plików do jednego w kolejności podanie 
cat lab33/plik3.txt lab22/plik2.txt lab11/plik1.txt >> suma.txt #to samo tylko na odwrót 
grep "tak" suma.txt >> log.txt #wypisuje wszystkie słowa TAK znajdujące się w pliku suma i zapisuje do log .txt
grep -c "tak" suma.txt >> log.txt #zliza ile razy dany napis jest w suma 
