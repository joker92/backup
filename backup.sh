#!/bin/bash

DEST_PATH=$HOME/Scrivania/  #con questa variabile lo script funziona sui vari sistemi.

if [ "$#" -ne 1 ]; then #$#=quanti parametri diamo in pasto allo script -ne=not equal ovvero se è diverso da..
  echo -e "\nNUMERO PARAMETRI ERRATO ASINO\n";
  exit;
fi

if [ -d "$1" ]; then #col -d si controlla se la directory esiste

TODAY=$(date +"%y-%m-%d-%T"); #con today troviamo la data del backup
FILE="backup.$TODAY"; #nome del file di backup
zip -r $FILE $1; #con zip creiamo il file compresso così da occupare meno spazio

mv $FILE $DEST_PATH #con mv si sposta il file

else
  echo -e "Directory inesistente\n"
  exit;
fi


