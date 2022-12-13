#!/bin/bash 

#HUOM!!! Ymmärsin ohjeistuksen niin, että YKSI auto lisätään (adds A new entry)
#jos pitäisi lisätä useampi, niin auton lisäyksen toiminnat olisivat loopin sisällä, kunnes ilmoitetaan ettei enää haluta lisätä
#kuten task1ssä oli

#muutetaan deliminator pilkuksi koko skriptin ajaksi
IFS=","

#luodaan funktio lisäämiselle
auto() {
  #lisätään stringi tiedostoon
  echo "$1" >> "$2"
}

#alustetaan rivinumeroille muuttuja
i=1
#kysytään valmistaja
  read -p "Mikä on auton valmistaja? " v
  #lisätään stringiin
  stringi="${v},"
  #kysytään malli
  read -p "Mikä on auton malli? " m
  #lisätään
  stringi+="${m},"
  #kysytään vuosi
  read -p "Mikä on auton vuosimalli? " vm
  #lisätään
  stringi+="${vm},"
  #kysytään väri
  read -p "Mikä on auton väri? " vari
  #lisätään
  stringi+="${vari}"

#kutsutaan funktiota, jotta näkyy tulosteessa
auto "${stringi}" "$1"

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
