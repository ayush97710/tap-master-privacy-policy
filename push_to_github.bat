@echo off
echo ===================================================
echo Pushing Tap Master Privacy Policy to GitHub...
echo Target Repo: https://github.com/ayush97710/tap-master-privacy-policy
echo ===================================================
cd /d "%~dp0"
git remote set-url origin https://ayush97710@github.com/ayush97710/tap-master-privacy-policy.git
git push -u origin main
echo.
if %ERRORLEVEL% EQU 0 (
    echo.
    echo ===================================================
    echo [SUCCESS] Privacy policy GitHub pe push ho gayi hai!
    echo Ab vercel.com par ja kar ise 1 click me deploy karein.
    echo ===================================================
) else (
    echo.
    echo [NOTE] Agar browser khule toh Sign in with GitHub click karein.
)
pause
