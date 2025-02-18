Start-Process -FilePath "PowerShell.exe" `
  -ArgumentList "-NoExit", "-Command", "dart run msix:create --certificate-path test_certificate.pfx --certificate-password revelation" `
  -Verb RunAs `
  -RedirectStandardOutput ".\output.log" `
  -RedirectStandardError ".\error.log" `
  -Wait

# ログを表示（実行結果の確認用）
Get-Content .\output.log
Get-Content .\error.log
