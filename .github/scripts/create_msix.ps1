Start-Process -FilePath "PowerShell.exe" -ArgumentList "-NoExit", "-Command", "dart run msix:create --certificate-path test_certificate.pfx --certificate-password 'revelation'" -Verb RunAs -RedirectStandardOutput ".\output.log" -RedirectStandardError ".\error.log" -Wait

Get-Content .\output.log
Get-Content .\error.log