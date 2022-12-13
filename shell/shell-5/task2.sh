#!/bin/bash 

#alustetaan rivinumeroille muuttuja
i=1
#Looppi, jotta voidaan lukea rivi riviltä (ja item itemiltä) -> IFS muutetaan pilkuksi
while IFS="," read -r valmistaja malli vuosi vari
do
#casella jätetään eka rivi pois
  case ${valmistaja} in
    Manufacturer)
      continue
    ;;
  #kaikki muut tulostetaan
  *)  
    #tulostetaan rivinro
    echo "----Rivi $i----"
    #tulostetaan valmistaja
    echo "Valmistaja: ${valmistaja}"
    #tulostetaan malli
    echo "Malli: ${malli}"
    #tulostetaan väri
    echo "Väri: ${vari}"
    #tulostetaan vuosi
    echo "Vuosi: ${vuosi}"
    (( i++ ))
    ;;
  esac
#luetaan annetusta tiedostosta
done < "$1"
