#!/bin/bash

#kaikki muut funktiot paitsi jako (luodaan ja annetaan muuttujille arvot erikseen 
#ongelmien välttämiseksi)
laske() {
  local tulos=0
  tulos=$(( $1$3$2 ))
  echo "$1 $3 $2 =" "${tulos}"
}
#jako erikseen, koska joudutaan tekemään hiukan eritavalla
jako() {
  local jakotulos=0
  jakotulos=$(echo "scale=2; $1/$2" | bc)
  echo "$1 / $2 =" "${jakotulos}"
}

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
      laske "${luku1}" "${luku2}" "-"
    #jos valittiin plus
    elif [ "${toiminto}" = "Plus" ]
    #tehdään pluslasku
    then 
      laske "${luku1}" "${luku2}" "+"
    #jos valittiin kerto
    elif [ "${toiminto}" = "Kerto" ]
    #tehdään kertolasku
    then
      laske "${luku1}" "${luku2}" "*"
    #jos valittiin jako
    elif [ "${toiminto}" = "Jako" ]
    #tehdään jakolasku
    then
      jako "${luku1}" "${luku2}"
    fi
  fi
done