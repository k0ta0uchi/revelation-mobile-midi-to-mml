Start-Process -FilePath "certutil.exe" `
  -ArgumentList "-importpfx test_certificate.pfx -p revelation" `
  -Verb RunAs `
  -RedirectStandardOutput ".\cert_import_output.log" `
  -RedirectStandardError ".\cert_import_error.log" `
  -Wait

# ログを表示（GitHub Actions のログに出力）
Get-Content ".\cert_import_output.log"
Get-Content ".\cert_import_error.log"
