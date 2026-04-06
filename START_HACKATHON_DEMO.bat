@echo off
title Smart Crop Advisory System - Demo Launcher
color 0A
echo.
echo     ████████████████████████████████████████████████
echo     █                                              █
echo     █    🌾 SMART CROP ADVISORY SYSTEM 🌾           █
echo     █                                              █
echo     █    📋 SIH 2025 - Problem Statement ID: 25010  █
echo     █    🎯 AI-powered agricultural advisory        █
echo     █    👨‍🌾 For small and marginal farmers          █
echo     █                                              █
echo     ████████████████████████████████████████████████
echo.
echo 🚀 HACKATHON DEMO LAUNCHER
echo.
echo This will start both frontend and backend in separate windows:
echo.
echo   ⚡ Backend Server  : http://localhost:8000
echo   🌐 Frontend UI     : http://localhost:3000
echo   📚 API Docs        : http://localhost:8000/docs
echo   🏠 Demo Homepage   : http://localhost:8000/home
echo.
echo Press any key to launch demo...
pause >nul

echo.
echo 🔄 Starting Backend Server...
start "Backend Server" cmd /k "cd /d \"C:\Users\subha\OneDrive\Desktop\Sih - 2025\backend\" && start_backend.bat"

echo 🔄 Waiting 3 seconds for backend to initialize...
timeout /t 3 /nobreak >nul

echo 🔄 Starting Frontend Server...
start "Frontend Server" cmd /k "cd /d \"C:\Users\subha\OneDrive\Desktop\Sih - 2025\frontend\" && start_frontend.bat"

echo.
echo ✅ Demo launched successfully!
echo.
echo 📱 Access points:
echo   • Frontend UI: http://localhost:3000
echo   • Backend API: http://localhost:8000
echo   • API Documentation: http://localhost:8000/docs
echo   • Demo Homepage: http://localhost:8000/home
echo.
echo 💡 Tips:
echo   • Use Ctrl+C in each window to stop servers
echo   • Check the terminal windows for any error messages
echo   • Test API endpoints using the interactive docs
echo.
echo 🏆 Your Smart Crop Advisory System is ready for demonstration!
echo.
echo Press any key to close this launcher...
pause >nul