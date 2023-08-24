cd #przechodzi do katalogu głównego 
mkdir cw1 #tworzy katalog cw1
cd cw1 #przechodzi do katalogu cw1
touch plik.txt # TWORZY plik.txt 
echo "Lorem Ipsum is simply dummy text of the printing" < plik.txt #zapisuje tekst w pliku plik.txt
mv plik.txt plik2.txt #zmienia nazwę plik.txt do plik2.txt
mkdir test #tworzy katalog tekst 
cp plik2.txt test/ #kopiowanie plik2.txt do katalogu test 
cp -r test/ test2/ #kopiowanie katalogu test z zawartością w tej samej lokalizacji jako test2
cd
rm -r cw1 #rm -r usuwa katalogii wraz z zawartością w przeciwieństwie do funkcji rmdir
