trap {
    Write-Host "❌ エラー発生: $_"
    exit 1
}

Start-Process -FilePath "certutil.exe" `
  -ArgumentList "-importpfx test_certificate.pfx -p revelation" `
  -Verb RunAs `
  -RedirectStandardOutput "C:\cert_import_output.log" `
  -RedirectStandardError "C:\cert_import_error.log" `
  -Wait

# ログを表示（GitHub Actions のログに出力）
Get-Content "C:\cert_import_output.log"
Get-Content "C:\cert_import_error.log"
