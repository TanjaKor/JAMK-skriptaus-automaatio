#!/bin/bash
#kysytään nimi
read -p "Tiedoston nimi:" filu
#luodaan datelle oma muuttuja, jota voidaan käyttää myöhemmin
date=$(date +%F)
#luodaan filulle oikeanlainen nimi
file=${filu}-${date}
#luodaan tiedosto
touch "/home/user/${file}"