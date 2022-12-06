#!/bin/bash

#koska halutaan 3 kertaa, luodaan looppi
for i in {1..3} 
#luodaan random-numero
do
  numero=$RANDOM 
  #printataan se
  echo ${numero}
  #viedään syslogiin randomnro ja "numero järjestysnro: numero" priorityllä user.info
  logger -p user.info "Numero $i: ${numero}"
done