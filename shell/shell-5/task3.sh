#!/bin/bash 

#HUOM!!! Ymmärsin ohjeistuksen niin, että YKSI auto lisätään (adds A new entry)
#jos pitäisi lisätä useampi, niin funktion toiminnat olisivat loopin sisällä, kunnes ilmoitetaan ettei enää haluta lisätä
#kuten task1ssä oli

#muutetaan deliminator pilkuksi koko skriptin ajaksi
IFS=","
#luodaan funktio lisäämiselle
auto() {
  #kysytään valmistaja
  read -p "Mikä on auton valmistaja? " v
  #kysytään malli
  read -p "Mikä on auton malli? " m
  #kysytään vuosi
  read -p "Mikä on auton vuosimalli? " vm
  #kysytään väri
  read -p "Mikä on auton vari? " vari
  #luodan stringi-muuttuja, johon lisätään halutut tiedot
  stringi=""
  #muutetaan annetut arvot yhdeksi stringiksi loopin avulla
  for ominaisuus in ${v} ${m} ${vm} ${vari}
  do
    stringi+="${ominaisuus},"
  done
  #lisätään stringi tiedostoon
  echo "${stringi}" >> "$1"
}

#alustetaan rivinumeroille muuttuja
i=1
#kutsutaan funktiota, jotta näkyy tulosteessa
auto "$@"
#Looppi, jotta voidaan lukea rivi riviltä (ja item itemiltä)
while read -r valmistaja malli vuosi vari
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
