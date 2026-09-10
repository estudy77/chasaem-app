[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
Set-Location $PSScriptRoot

Write-Host "== git commit ==" -ForegroundColor Cyan
git add -A
git commit -m "update $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"

Write-Host ""
Write-Host "== git push (GitHub 백업) ==" -ForegroundColor Cyan
git push

Write-Host ""
Write-Host "== clasp push (구글 Apps Script 반영) ==" -ForegroundColor Cyan
clasp push --force

Write-Host ""
Write-Host "완료됐습니다." -ForegroundColor Green
Read-Host "엔터를 누르면 창이 닫힙니다"
