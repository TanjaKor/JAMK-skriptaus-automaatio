#määritellään parametrit
param(
  [string]$foldername="",
  [string]$filename="",
  [int]$number=0
)
#tarkistetaan onko kyseistä kansiota olemassa
$isdir = Test-Path $foldername
#jos kansiota ei ole, luodaan se
if ($isdir -ne "true") {
  New-Item -Path $foldername -ItemType Directory
  }
#siirrytään haluttuun kansioon
Set-Location $foldername
#pyöritetään loopin kautta uusien tiedostojen lisäys
for ($i = 1; $i -le $number; $i++) {
    $filepath = $foldername + $filename + $i
    New-Item -Path $filepath -ItemType File
  }
