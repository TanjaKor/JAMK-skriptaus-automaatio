#Määritellään parametrit
param(
  [string]$param1 = "",
  [string]$param2 = "",
  [string]$param3 = ""
)
#kirjoitetaan eka rivi
Write-Host "Parameters area:" $param1 $param2 $param3
#luodaan uusi muuttuja, johon menee parametrit ja sortataan ne Sort-objectin avulla
$params = $param1, $param2, $param3 | Sort-Object -Property Length
#tulostetaan ulos
Write-Host "Your ordered word are:" $params