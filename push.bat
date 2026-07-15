@echo off
setlocal EnableDelayedExpansion

REM ==========================================
REM Start Timer
REM ==========================================
for /f %%i in ('powershell -NoProfile -Command "[DateTime]::UtcNow.Ticks"') do set START=%%i

REM ==========================================
REM Find latest CPP file
REM ==========================================
set "FILE="

for /f "delims=" %%f in ('dir /b /a-d /o-d *.cpp') do (
    set "FILE=%%~nf"
    goto :found
)

:found

if not defined FILE (
    echo No .cpp files found.
    pause
    exit /b
)

echo Latest Problem: !FILE!

REM Current Date & Time
for /f "delims=" %%i in ('powershell -NoProfile -Command "Get-Date -Format ''yyyy-MM-dd HH:mm:ss''"') do set DATETIME=%%i

git add .

git commit -m "Solved !FILE! | !DATETIME!"

if errorlevel 1 (
    echo Nothing to commit.
    pause
    exit /b
)

git push origin main

REM ==========================================
REM Stop Timer
REM ==========================================
for /f %%i in ('powershell -NoProfile -Command "[DateTime]::UtcNow.Ticks"') do set END=%%i

for /f %%i in ('powershell -NoProfile -Command "([TimeSpan]::FromTicks(%END%-%START%)).TotalMilliseconds.ToString('F0')"') do set MS=%%i

echo.
echo ===================================
echo Problem : !FILE!
echo Date    : !DATETIME!
echo Time    : !MS! ms
echo ===================================

pause