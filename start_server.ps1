# Smart Crop Advisory System - PowerShell Server Starter
Write-Host "🏆 Smart Crop Advisory System - Starting Server" -ForegroundColor Green
Write-Host "=============================================" -ForegroundColor Green
Write-Host ""

# Check if Python is available
try {
    $pythonVersion = python --version 2>&1
    Write-Host "✅ Python found: $pythonVersion" -ForegroundColor Green
    
    Write-Host ""
    Write-Host "🌐 Starting localhost server on http://localhost:8080" -ForegroundColor Yellow
    Write-Host "📱 Opening browser..." -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Cyan
    Write-Host ""
    
    # Open browser
    Start-Process "http://localhost:8080"
    
    # Start Python HTTP server
    python -m http.server 8080
    
} catch {
    Write-Host "❌ Python not found. Opening file directly..." -ForegroundColor Yellow
    Write-Host ""
    Write-Host "🌐 Direct file link:" -ForegroundColor Cyan
    Write-Host "file:///C:/Users/hp/Desktop/SIH/smart-crop-advisory-system-main/index.html" -ForegroundColor White
    Write-Host ""
    
    # Open the HTML file directly
    Start-Process "index.html"
    
    Write-Host "✅ Application opened in browser!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Press any key to exit..." -ForegroundColor Yellow
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}
