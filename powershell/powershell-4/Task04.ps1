#luodaan tyhjä lista ja muuttujat ekan rivin tulosteelle
$today = Get-Date -format "dd.MM.yyyy"
$time = Get-Date -format "HH:mm"
"Today is " + $today + " and time is " + $time
$names = @()
#loop pyörii niin pitkään, kunnes tulee pelkkä enter
do {
  #kysytään tiedoston nimi
  $name = Read-Host "Give a file name, press Enter to quit"
  #lisätään nimi listaan
  $names += $name 
}
until ($name -eq "")
#for loopiin ehto count, jotta tietää milloin loppuu
$count = $names.Count-1
#luodaan uudet tiedostot (jos niitä ei ole) +kirjoitetaan niihin
for ($i=0;$i -lt $count; $i++ ) {
  $path = Join-Path -Path $home -ChildPath $names[$i]
  Get-Date -format "dd.MM.yyyy HH:mm" | Add-Content $path
}
#printataan kuittaus
Write-Host "$count files were created succesfully"
