#!/bin/bash

#luo simppeli laskin, ja sille syötteen teksti
PS3="Valitse laskutoiminto: "
#aluksi valitaan mikä toiminto halutaan tehdä
select toiminto in "Miinus" "Plus" "Kerto" "Jako" "Exit"
do
  #jos valittiin exit
  if [ "${toiminto}" = "Exit" ]
  #lopetetaan laskin
  then
    break
  else
    read -p "Anna ensimmäinen luku: " luku1
    read -p "Anna toinen luku: " luku2
    #jos valittiin miinus
    if [ "${toiminto}" = "Miinus" ]
    #tehdään miinuslasku
    then 
      tulos=$(( luku1- luku2 ))
      echo "${luku1} - ${luku2} =" ${tulos}
    #jos valittiin plus
    elif [ "${toiminto}" = "Plus" ]
    #tehdään pluslasku
    then 
      tulos=$(( luku1 + luku2 ))
      echo "${luku1} + ${luku2} =" ${tulos}
    #jos valittiin kerto
    elif [ "${toiminto}" = "Kerto" ]
    #tehdään kertolasku
    then
      tulos=$(( luku1 * luku2 ))
      echo "${luku1} * ${luku2} =" ${tulos}
    #jos valittiin jako
    elif [ "${toiminto}" = "Jako" ]
    #tehdään jakolasku
    then
      tulos=$(echo "scale=2; ${luku1}/${luku2}" | bc)
      echo "${luku1} / ${luku2} =" "${tulos}"
    fi
  fi
done