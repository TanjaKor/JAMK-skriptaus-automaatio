#luodaan parametri
param(
  [string]$filename = ""
)
#luodaan muuttuja, jolla voidaan testata tiedoston olemassaolo, voitaisiin tehdä myös try-catchilla kuten task01,
# mutta tämä mielestäni siistimpi vaihtoehto, koska muut virheet eivät sekoitu tiedoston olemassaolon ongelmiin
$isit = Test-Path $filename
#jos tiedosto löytyy, luetaan urlit rivi kerrallaan ja avataan selain
if ($isit -eq "True") {
  #Luetaan tiedosto ja tallennetaan se muuttujaan
  $urls = Get-Content $filename
  #käydään kys. muuttuja rivi riviltä läpi
  foreach ($url in $urls) {
    Start-Process -FilePath Firefox -ArgumentList $url
  }
}
#Jos ei ole tiedostoa, kerrotaan se
else {
  Write-Output "File not here"
}