@echo off
REM This script adds the current directory to the PATH variable.
REM
REM Usage: add-to-path

choice /C YN /M "Do you want to add the current Folder to the PATH?"

if "%ERRORLEVEL%"=="1" (
    echo "Adding %CD% to PATH."
    setx /M Path "%PATH%;%CD%"
)