#määritellään files-muuttujaan oikea arvo jä syötetään tämä Where-Objectille
$files = Get-ChildItem $HOME | Where-Object { !$_.PsIsContainer} 
#tulostetaan näytölle tulos
Write-Host $files.count "files found at" $HOME