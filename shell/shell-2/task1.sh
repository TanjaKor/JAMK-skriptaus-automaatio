#!/bin/bash

#Kysy mikä tiedosto(polku) 
read -p "Minkä tiedoston haluat poistaa? " tiedosto
#Tarkista onko tiedosto normaali tiedosto ja onko se tyhjä
if [ -f "${tiedosto}" ] && [ ! -s "${tiedosto}" ]
then
  #Jos on, poistetaan tiedosto
  rm "${tiedosto}"
  echo "${tiedosto} poistettu"
 #Jos ei ole normaali tai tyhjä tulosta errorviesti
else  
  echo "This file doesn't exist or it's not empty"
fi