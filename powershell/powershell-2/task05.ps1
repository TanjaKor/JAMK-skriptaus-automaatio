#määritellään parametrit
param (
  [string]$computer = '192.168.1.1',
  [int]$tries = 1
)
#Kysytään onko ok
$lupa = Read-Host "Pingaan osoitteeseen $computer $tries kertaa, ok?`n[Y/n]"
#jos on, niin homma jatkuu (jos antaa jotain muuta, niin skripti keskeyttyy automatic, 
#tähän voisi tehdä myös else lausekkeen halutessaan, mutta tehtävänannossa ei pyydetty)
if ($lupa -eq "y") {
  #pyöräytetään loopin kautta oikea määrä
  for ($i = 0; $i -lt $tries; $i++)
  #tulostetaan 
  { Write-Output("try " + ($i + 1) + " to ping: " + $computer) }
}
