#luodaan parametri
param(
  [string]$filename = ""
)
  #luodaan laskennalle muuttuja
  $count = 0
  #try-catch rakenteella napataan virhe
  try {
  #luetaan tiedosto ja luetaan se rivi riviltä
  Import-Csv $filename -ErrorAction Stop | ForEach-Object {
    #luodaan käyttäjätunnus
    $accountname = $_.Lastname.Substring(0, 4).ToLower() + $_.Firstname.Substring(0, 2).ToLower()
    #varmistetaan
    $isitokay = Read-Host "A new local account" $accountname "will be created for"$_.Firstname $_.Lastname "Yes/No"
    if ($isitokay -eq "y") {
      New-LocalUser -Name $accountname -NoPassword
      $count += 1
    }
  }
  #printataan vielä kuinka monta tunnusta on luotu  
Write-Host $count "accounts created successfully." -ForegroundColor green
 }
 #jos tulee virhe import vaiheessa:
catch {
  {File not found}
}