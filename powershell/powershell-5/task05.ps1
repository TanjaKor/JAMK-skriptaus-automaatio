#parametrin luonti tiedostolle
param(
  [string]$filename = ""
)
#Luodaan funktio
function Add-MyEvent($Type, $Message) {
    Write-EventLog -LogName "Application" -Source "MyPowerShell" -EventId 1 -EntryType $Type -Message $Message
}
#try-catch rakenne, jolla napataan mahdollinen virhe
try {
    #Haetaan halutut tiedot ja kirjoitetaan tiedostoon
    Get-LocalUser | Select-Object Name, FullName, SID, Lastlogon | Export-Csv -Path $filename -Delimiter ","
    #näytetään tiedoston sisältö
    Import-Csv $filename
    #lisätään loki tapathtumienvalvontaan
    (Add-MyEvent "Information" "File created successfully")
}
catch {
  #jos ei onnistu, niin lisätään siitä tieto tapahtumienvalvontaan
    (Add-MyEvent "Error" "File could not be created")
}