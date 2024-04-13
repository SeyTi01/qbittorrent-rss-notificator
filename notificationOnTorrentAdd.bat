@echo off
setlocal
set "tags=%~1"
set "name=%~2"

echo %tags% | findstr /C:"notification" >nul 2>&1

if errorlevel 1 (
    echo Tag not found, exiting.
    exit /b
)

echo Tag found, sending notification.

powershell.exe -noexit "%~dp0\sendNotification.ps1" -name '%name%'

endlocal
