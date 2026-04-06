@echo off
echo 🏆 कृषि साथी (Krishi Saathi) - Smart Crop Advisory System
echo =====================================================
echo SIH 2025 - Problem Statement ID: 25010
echo =====================================================
echo.

echo 🚀 Setting up the Smart Crop Advisory System...
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Python is not installed. Please install Python 3.8+ first.
    pause
    exit /b 1
)

echo ✅ Python is installed
echo.

REM Navigate to backend directory
cd backend

REM Install dependencies
echo 📦 Installing Python dependencies...
pip install -r requirements.txt

if errorlevel 1 (
    echo ❌ Failed to install dependencies. Please check your internet connection.
    pause
    exit /b 1
)

echo ✅ Dependencies installed successfully
echo.

REM Check if database exists
if not exist "smart_crop_advisory.db" (
    echo 🗄️ Database not found. Creating database...
    python -c "from database import create_tables; create_tables(); print('Database created successfully!')"
)

echo ✅ Database is ready
echo.

echo 🎯 Starting the server...
echo.
echo =====================================================
echo Server will start on: http://localhost:8000
echo API Documentation: http://localhost:8000/docs
echo =====================================================
echo.

python main.py

pause
