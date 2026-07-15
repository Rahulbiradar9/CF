@echo off
setlocal EnableDelayedExpansion

REM Find the most recently modified .cpp file
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

echo Latest file: !FILE!

git add .
git commit -m "Solved !FILE!"
git push origin main

pause