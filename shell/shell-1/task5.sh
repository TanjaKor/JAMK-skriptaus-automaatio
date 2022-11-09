#!/bin/bash
#luodaan kotikansioon polku, joka voidaan yhdistää myöhemmin muuttujiin
polku="/home/user/"
#poistetaan tiedostot
rm "${polku}$1" "${polku}$2" "${polku}$3"
#tulostetaan kuittaus
echo "i deleted the following files: $1 $2 $3"