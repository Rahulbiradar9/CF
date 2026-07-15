@echo off
setlocal EnableDelayedExpansion

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

git add .
git commit -m "Solved !LATEST!"
git push origin main

pause