param(
  [string]$filename = ""
)
Get-LocalUser | Select-Object Name, Fullname, SID, Lastlogon | Export-Csv -Path $filename -Delimiter ","
Import-Csv $filename