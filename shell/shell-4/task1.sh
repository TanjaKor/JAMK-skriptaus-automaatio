#!/bin/bash

#pyydetään URL
read -p "Anna urli: " urli
#luodaan funktio
pingaa() {
  #yritetään pingata
  ping -c 1 "$1" > /dev/null 2>&1
  #palautetaan exit koodi 
  if [ $? -ne 0 ]
  then 
   return 1
  fi
}
#kutsutaan funktio
pingaa "${urli}"
#printataan lopputulos exit koodin mukaan
if [ $? -ne 0 ]
then 
  echo "pingaus ei onnistunut"
else
  echo "pingaus onnistui"
fi  