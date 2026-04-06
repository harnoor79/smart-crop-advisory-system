# Smart Crop Advisory System - PowerShell Demo Launcher
# SIH 2025 - Problem Statement ID: 25010

Write-Host ""
Write-Host "████████████████████████████████████████████████" -ForegroundColor Green
Write-Host "█                                              █" -ForegroundColor Green  
Write-Host "█    🌾 SMART CROP ADVISORY SYSTEM 🌾           █" -ForegroundColor Green
Write-Host "█                                              █" -ForegroundColor Green
Write-Host "█    📋 SIH 2025 - Problem Statement ID: 25010  █" -ForegroundColor Green
Write-Host "█    🎯 AI-powered agricultural advisory        █" -ForegroundColor Green
Write-Host "█    👨‍🌾 For small and marginal farmers          █" -ForegroundColor Green
Write-Host "█                                              █" -ForegroundColor Green
Write-Host "████████████████████████████████████████████████" -ForegroundColor Green
Write-Host ""
Write-Host "🚀 HACKATHON DEMO LAUNCHER" -ForegroundColor Yellow
Write-Host ""
Write-Host "This will start both frontend and backend in separate windows:" -ForegroundColor Cyan
Write-Host ""
Write-Host "  ⚡ Backend Server  : http://localhost:8000" -ForegroundColor White
Write-Host "  🌐 Frontend UI     : http://localhost:3000" -ForegroundColor White
Write-Host "  📚 API Docs        : http://localhost:8000/docs" -ForegroundColor White
Write-Host "  🏠 Demo Homepage   : http://localhost:8000/home" -ForegroundColor White
Write-Host ""

# Set paths
$backendPath = "C:\Users\subha\OneDrive\Desktop\Sih - 2025\backend"
$frontendPath = "C:\Users\subha\OneDrive\Desktop\Sih - 2025\frontend"

Write-Host "Press any key to launch demo..." -ForegroundColor Yellow
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

Write-Host ""
Write-Host "🔄 Starting Backend Server..." -ForegroundColor Yellow

# Start Backend in new PowerShell window
Start-Process powershell -ArgumentList @(
    "-NoExit",
    "-Command",
    "cd '$backendPath'; Write-Host '🌾 Backend Server Starting...' -ForegroundColor Green; uvicorn minimal_server:app --host 0.0.0.0 --port 8000 --reload"
) -WindowStyle Normal

Write-Host "🔄 Waiting 3 seconds for backend to initialize..." -ForegroundColor Yellow
Start-Sleep -Seconds 3

Write-Host "🔄 Starting Frontend Server..." -ForegroundColor Yellow

# Start Frontend in new PowerShell window  
Start-Process powershell -ArgumentList @(
    "-NoExit", 
    "-Command",
    "cd '$frontendPath'; Write-Host '🌐 Frontend Server Starting...' -ForegroundColor Green; try { python -m http.server 3000 } catch { Write-Host 'Opening index.html directly...' -ForegroundColor Yellow; Start-Process 'index.html' }"
) -WindowStyle Normal

Write-Host ""
Write-Host "✅ Demo launched successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "📱 Access points:" -ForegroundColor Cyan
Write-Host "  • Frontend UI: http://localhost:3000" -ForegroundColor White
Write-Host "  • Backend API: http://localhost:8000" -ForegroundColor White  
Write-Host "  • API Documentation: http://localhost:8000/docs" -ForegroundColor White
Write-Host "  • Demo Homepage: http://localhost:8000/home" -ForegroundColor White
Write-Host ""
Write-Host "💡 Tips:" -ForegroundColor Cyan
Write-Host "  • Use Ctrl+C in each window to stop servers" -ForegroundColor White
Write-Host "  • Check the terminal windows for any error messages" -ForegroundColor White
Write-Host "  • Test API endpoints using the interactive docs" -ForegroundColor White
Write-Host ""
Write-Host "🏆 Your Smart Crop Advisory System is ready for demonstration!" -ForegroundColor Green
Write-Host ""
Write-Host "Press any key to close this launcher..." -ForegroundColor Yellow
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")