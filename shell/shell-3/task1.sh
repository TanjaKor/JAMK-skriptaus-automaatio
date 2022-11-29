#!/bin/bash

#luodaan lista ja pohjamuuttuja, johon tallennetaan arvot
declare -a lista
value=""
#loop kysyy niin kauan, että arvoksi tulee exit
while [ "${value}" != "exit" ]
do
  #jokainen arvo tallennetaan listaan
  read -p "Anna arvo, kirjoita exit päästäksesi pois: " value
  lista+=("${value}")
done
#printataa lista ulos
for x in "${!lista[@]}"
do
  #paitsi jos on exit
  if [ "${lista[$x]}" = "exit" ]
  then
    break
  fi
  echo "${x}: ${lista[$x]}"
done