#!/bin/bash

#Create a script that has a function called network_information that shows the following information:
#ip address: 
#hostname: 
#Log the messages in the syslog with a custom tag "network-information".
#Hints: Utilize arrays and ip or hostname commands with options

#luodaan haluttu funktio
network_information() {
  #etsi ja näytä ip-osoite sekä hostname, luodaan ja alustetaan muuttujat erikseen, jotta ei tuu ongelmia
  local iposoite=""
  iposoite=$(hostname -i)
  local hosti=""
  hosti=$(hostname)
  echo "Ip-osoite on ${iposoite} ja hostname on ${hosti}"
  #vie yo tiedot syslogiin tagilla "network-information"
  logger -t network_information "ip: ${iposoite}, hostname: ${hosti}"
}
#kutsutaan funktio
network_information