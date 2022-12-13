#!/bin/bash 

#kysytään arvoja, kunnes tulee exit komento
  #loop
  while [ "$arvo" != "exit" ]
  do
    #kysy arvo
    read -p "Anna arvo, lopeta kirjoittamalla exit: " arvo
    #lisää arvo animal.txt tiedostoon
    echo "${arvo}" >> animal.txt
  done
#printataan arvot tiedostosta
#rivi riviltä, loop
while read rivi
do
#tulostetaan arvo
  echo "${rivi}"
#luetaan halutusta tiedostosta
done < animal.txt 