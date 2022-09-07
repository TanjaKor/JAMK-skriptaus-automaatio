#tulostetaan ympäristön käyttäjänimi ja päiväys 
Write-Host "logged username is" $env:USERNAME "and today is" (Get-Date -Format d)