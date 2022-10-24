#luodaan parametri
param(
  [string]$filename = ""
)
try {
#Luetaan tiedosto ja tallennetaan se muuttujaan, jota voidaan myöhemmin käyttää laskennassa
$users = Import-Csv $filename -ErrorAction Stop
#käydään kys. muuttuja rivi riviltä läpi
$users | ForEach-Object {
  #luodaan käyttäjätunnus
  $accountname = $_.Lastname.Substring(0, 4) + $_.Firstname.Substring(0, 2)
  #Tulostetaan haluttu teksti
  Write-Host "Hello" $_.Firstname $_.Lastname "this is your new account:"
  Write-Host $accountname.toLower() -ForegroundColor green
  }
#printataan vielä kuinka monta tunnusta on luotu  
Write-Host $users.Count "accounts created successfully."
}
#catchataan virhe ja tulostetaan viesti, jos tiedostoa ei ole
catch {
  {File does not exist}
}