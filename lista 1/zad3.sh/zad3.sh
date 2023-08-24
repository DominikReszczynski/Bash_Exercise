#https://www.astrouw.edu.pl/~jskowron/pracownia/komendy/
cd
mkdir Procesy_BASH
cd Procesy_BASH
touch procesy.txt
ps -f >> procesy.txt #wypisuje procesy uruchomione na komputerze, -F klucz sprawia extra full info
echo "-----------------------------------------------" >> procesy.txt
df -h >> procesy.txt #wypisuje rozmiar i ilość dostępnego miejsca na dyskach w Kb i w procentach
echo "-----------------------------------------------" >> procesy.txt
du -s -m | sort -n >> procesy.txt #liczy rozmiar katalogów i plików zawartych w podanym katalogu, -s sprawia sumę rozmiarów, -m podaje rozmiar w Mb, | pozwala dodatkową komendę zastosować sort -n sortuje wyniki od najmniejszego do największego 
echo "-----------------------------------------------" >> procesy.txt
echo "-----------------------------------------------" >> procesy.txt


