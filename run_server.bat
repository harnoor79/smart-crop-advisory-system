@echo off
echo 🏆 Smart Crop Advisory System - Auto Setup and Run
echo =====================================================
echo.

echo Checking for Python installation...
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Python not found. Installing Python...
    echo.
    echo Please wait while we install Python from Microsoft Store...
    start ms-windows-store://pdp/?productid=9NRWMJP3717K
    echo.
    echo After Python installation completes, please:
    echo 1. Close this window
    echo 2. Run this script again
    echo.
    pause
    exit /b 1
)

echo ✅ Python found!
python --version

echo.
echo 🚀 Starting Smart Crop Advisory System...
echo.

cd /d "%~dp0"
python main.py

pause
