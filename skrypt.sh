#!/bin/bash

if [[ "$1" == "--date" ]]; then
    echo $(date +%Y-%m-%d)
elif [[ "$1" == "--logs" ]]; then
    if [[ -z "$2" ]]; then
        for i in {1..100}; do
            echo "log$i.txt skrypt.sh $(date +%Y-%m-%d)" > log$i.txt
        done
    else
        for i in $(seq 1 $2); do
            echo "log$i.txt skrypt.sh $(date +%Y-%m-%d)" > log$i.txt
        done
    fi
elif [[ "$1" == "--help" ]]; then
    echo "Dostępne opcje:"
    echo "--date - wyświetla dzisiejszą datę"
    echo "--logs - tworzy automatycznie 100 plików logx.txt, gdzie x to numer pliku od 1 do 100, w każdym pliku jest wpisana jego nazwa, nazwa skryptu i data"
    echo "--logs [liczba] - tworzy automatycznie podaną liczbę plików logx.txt, gdzie x to numer pliku od 1 do podanej liczby, w każdym pliku jest wpisana jego nazwa, nazwa skryptu i data"
else
    echo "Nieznana opcja. Użyj --help, aby wyświetlić dostępne opcje."
fi
