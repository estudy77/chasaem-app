@echo off
cd /d "%~dp0"

echo == git commit ==
git add -A
git commit -m "update %date% %time%"

echo.
echo == git push (GitHub 백업) ==
git push

echo.
echo == clasp push (구글 Apps Script 반영) ==
clasp push --force

echo.
echo 완료됐습니다.
pause
