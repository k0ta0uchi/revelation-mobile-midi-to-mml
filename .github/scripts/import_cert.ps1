$ErrorActionPreference = "Stop"  # エラー時に即終了
trap {
    Write-Host "❌ エラーが発生しました: $_"
    exit 1
}

Write-Host "🔹 証明書をインポート開始..."

Start-Process -FilePath "certutil.exe" `
  -ArgumentList "-importpfx", "test_certificate.pfx", "-p", "revelation" `
  -Verb RunAs `
  -Wait

Write-Host "✅ 証明書インポート完了！"
