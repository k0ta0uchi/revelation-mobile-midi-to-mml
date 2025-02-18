Start-Process -FilePath "certutil.exe" -ArgumentList "-importpfx test_certificate.pfx -p revelation" -Verb RunAs -Wait -RedirectStandardOutput ".\output.log" -RedirectStandardError ".\error.log"

# ログを表示
Get-Content .\output.log
Get-Content .\error.log