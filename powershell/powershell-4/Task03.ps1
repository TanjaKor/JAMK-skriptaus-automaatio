param(
  [string]$filename = ""
)
#luodaan halutulle tiedostolle polku ja tyhjä lista
$file = Join-Path $HOME $filename
[array]$names = ""
#loop pyörii niin pitkään, kunnes tulee pelkkä enter
do {
  #kysytään workstationin nimi
  $name = Read-Host "Give a workstation name, press Enter to quit"
  #lisätään nimi listaan
  $names += $name 
}
until ($name -eq "")
#kirjoitetaan lista tiedostoon
  $names | Add-Content $file
#kuitataan, että homma roger
Write-Host "$file created succesfully"