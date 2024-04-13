@echo off
setlocal
set "name=%~1"
set "tags=%~2"

echo %tags% | findstr /C:"Notification" >nul 2>&1

if errorlevel 1 (
    echo Tag not found, exiting.
    exit /b
)

echo Tag found, sending notification.

powershell.exe -ExecutionPolicy Bypass -noexit "%~dp0\sendNotification.ps1" -name '%name%'

endlocal
