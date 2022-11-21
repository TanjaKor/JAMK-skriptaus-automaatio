#!/bin/bash
#Create a script that returns a type of objects given (file or directory or something else).
#User can give unlimited number of paths using the commandline arguments.
#Every object type is printed on the own line.

#koska annettujen polkujen määrää ei tiedetä etukäteen, käydään ne kaikki läpi 
for x in "$@"
do
  #Tarkista onko tiedosto
  if [ -f "${x}" ]
  then
    echo "${x} on tiedosto"
  # vai kansio 
  elif [ -d "${x}" ]
  then
    echo "${x} on kansio"
  #vai joku muu 
  else
    echo "${x} on jotain muuta tai sitä ei ole"
  fi
done
