@echo off
echo 🏆 Smart Crop Advisory System - Localhost Server
echo ================================================
echo.

echo Checking for Python...
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Python not found. Starting simple HTTP server...
    echo.
    echo 📁 Opening file directly in browser...
    start index.html
    echo.
    echo 🌐 Direct file link:
    echo file:///C:/Users/hp/Desktop/SIH/smart-crop-advisory-system-main/index.html
    echo.
    pause
    exit /b 0
)

echo ✅ Python found! Starting localhost server...
echo.

cd /d "%~dp0"
echo 🌐 Starting server on http://localhost:8080
echo 📱 Opening browser...
echo.
echo Press Ctrl+C to stop the server
echo.

start http://localhost:8080
python -m http.server 8080

pause
