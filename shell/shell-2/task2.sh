#!/bin/bash

#tarkista onko /etc/hosts tiedostoa olemassa
if [ -e /etc/hosts ]
  #Jos kyllä, echo on olemassa
  then
  echo "On olemassa"
  #tarkista onko kirjoitettavissa
    if [ -w /etc/hosts ]
    #jos kyllä, echo on kirjoitettavissa
    then
    echo "On sinun muokattavissa"
    #jos ei, niin ei ole kirjoitettavissa
    else
    echo "Et pysty muokkaamaan tätä tiedostoa"
    #loppu
    fi
#Jos ei ole niin kerro, että ei ole
else
  echo "Tiedostoa ei ole olemassa"
#fi
fi