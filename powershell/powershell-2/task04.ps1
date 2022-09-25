#määritellään parametrit
param(
  [string]$name = "unknown",
  [int]$lkm = 1
)
#pyöräytetään loopin kautta oikea määrä
for($i=0; $i -lt $lkm; $i++){
Write-Host Hello $name}