# Smart Crop Advisory System - PowerShell Dependency Installer
# SIH 2025 - Problem Statement ID: 25010

Write-Host "🏆 Smart Crop Advisory System - Dependency Installer" -ForegroundColor Green
Write-Host "=====================================================" -ForegroundColor Green
Write-Host ""

# Check Python installation
Write-Host "Checking Python installation..." -ForegroundColor Yellow
try {
    $pythonVersion = python --version 2>&1
    Write-Host "✅ Python is installed: $pythonVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Python is not installed!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Python 3.8+ from: https://www.python.org/downloads/" -ForegroundColor Yellow
    Write-Host "Make sure to check 'Add Python to PATH' during installation." -ForegroundColor Yellow
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "📦 Installing core dependencies..." -ForegroundColor Yellow
Write-Host ""

# Core server dependencies
Write-Host "Installing FastAPI and server dependencies..." -ForegroundColor Cyan
pip install fastapi>=0.68.0
pip install uvicorn>=0.15.0
pip install sqlalchemy>=1.4.0

Write-Host ""
Write-Host "Installing data processing dependencies..." -ForegroundColor Cyan
pip install requests>=2.28.0
pip install pandas>=1.4.0
pip install numpy>=1.21.0
pip install scikit-learn>=1.0.0

Write-Host ""
Write-Host "Installing image processing dependencies..." -ForegroundColor Cyan
pip install pillow>=9.0.0
pip install opencv-python>=4.5.0

Write-Host ""
Write-Host "Installing optional dependencies..." -ForegroundColor Cyan
pip install matplotlib>=3.5.0
pip install plotly>=5.0.0
pip install python-multipart>=0.0.5

Write-Host ""
Write-Host "✅ All dependencies installed successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "🔑 Next steps:" -ForegroundColor Yellow
Write-Host "1. Get API keys from the links provided in the documentation" -ForegroundColor White
Write-Host "2. Set up environment variables for API keys" -ForegroundColor White
Write-Host "3. Run the application using: python main.py" -ForegroundColor White
Write-Host ""
Read-Host "Press Enter to exit"
