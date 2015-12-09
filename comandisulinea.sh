#!/bin/bash



#conta quanti parametri vengono dati esempio : (ciao come va sono 3 parametri .)

echo -e "da linea fi comando hai inserito $# parametri\n";


# il $0 ti stampa il programma che sta girando (esempio il comando su linea) quindi e l'eseguibile comandisulinea.sh  
echo -e "il propgramma in esecuzione é $0\n"


# questo  $1 prende il primo parametro es ciao come va prende solo il "ciao" 
echo  -e "il primo parametro inseirito è $1\n" 


#stampa tutti i parametri 
echo -e "$@\n"
