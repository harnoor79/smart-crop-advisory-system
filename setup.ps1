# 🏆 कृषि साथी (Krishi Saathi) - Smart Crop Advisory System Setup
# SIH 2025 - Problem Statement ID: 25010

Write-Host "🏆 कृषि साथी (Krishi Saathi) - Smart Crop Advisory System" -ForegroundColor Green
Write-Host "=====================================================" -ForegroundColor Green
Write-Host "SIH 2025 - Problem Statement ID: 25010" -ForegroundColor Green
Write-Host "=====================================================" -ForegroundColor Green
Write-Host ""

# Check if Python is installed
try {
    $pythonVersion = python --version 2>&1
    Write-Host "✅ Python is installed: $pythonVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Python is not installed. Please install Python 3.8+ first." -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""

# Navigate to backend directory
Set-Location backend

# Install dependencies
Write-Host "📦 Installing Python dependencies..." -ForegroundColor Yellow
try {
    pip install -r requirements.txt
    Write-Host "✅ Dependencies installed successfully" -ForegroundColor Green
} catch {
    Write-Host "❌ Failed to install dependencies. Please check your internet connection." -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""

# Check if database exists
if (-not (Test-Path "smart_crop_advisory.db")) {
    Write-Host "🗄️ Database not found. Creating database..." -ForegroundColor Yellow
    python -c "from database import create_tables; create_tables(); print('Database created successfully!')"
}

Write-Host "✅ Database is ready" -ForegroundColor Green
Write-Host ""

Write-Host "🎯 Starting the server..." -ForegroundColor Yellow
Write-Host ""
Write-Host "=====================================================" -ForegroundColor Cyan
Write-Host "Server will start on: http://localhost:8000" -ForegroundColor Cyan
Write-Host "API Documentation: http://localhost:8000/docs" -ForegroundColor Cyan
Write-Host "=====================================================" -ForegroundColor Cyan
Write-Host ""

python main.py

Read-Host "Press Enter to exit"
