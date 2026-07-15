@echo off
setlocal EnableDelayedExpansion

REM ----------------------------
REM Start Timer
REM ----------------------------
powershell -Command "$start = Get-Date"

REM Find the most recently modified folder
for /f "delims=" %%d in ('dir /ad /b /o-d') do (
    set "LATEST=%%d"
    goto :found
)

:found
if not defined LATEST (
    echo No problem folders found.
    pause
    exit /b
)

echo Latest problem: !LATEST!

REM Current Date & Time
for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format \"yyyy-MM-dd HH:mm:ss\""') do set DATETIME=%%i

git add .
git commit -m "Solved !LATEST! | %DATETIME%"
git push origin main

REM ----------------------------
REM End Timer
REM ----------------------------
powershell -NoProfile -Command ^
"$elapsed=((Get-Date)-([datetime]'%DATE% %TIME%')).TotalMilliseconds; Write-Host ('Execution Time: {0:N0} ms' -f $elapsed)"

pause