@echo off
echo 🏆 Smart Crop Advisory System - Dependency Installer
echo =====================================================
echo.

echo Checking Python installation...
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Python is not installed!
    echo.
    echo Please install Python 3.8+ from: https://www.python.org/downloads/
    echo Make sure to check "Add Python to PATH" during installation.
    echo.
    pause
    exit /b 1
)

echo ✅ Python is installed
python --version

echo.
echo 📦 Installing core dependencies...
echo.

echo Installing FastAPI and server dependencies...
pip install fastapi>=0.68.0
pip install uvicorn>=0.15.0
pip install sqlalchemy>=1.4.0

echo.
echo Installing data processing dependencies...
pip install requests>=2.28.0
pip install pandas>=1.4.0
pip install numpy>=1.21.0
pip install scikit-learn>=1.0.0

echo.
echo Installing image processing dependencies...
pip install pillow>=9.0.0
pip install opencv-python>=4.5.0

echo.
echo Installing optional dependencies...
pip install matplotlib>=3.5.0
pip install plotly>=5.0.0
pip install python-multipart>=0.0.5

echo.
echo ✅ All dependencies installed successfully!
echo.
echo 🔑 Next steps:
echo 1. Get API keys from the links provided in the documentation
echo 2. Set up environment variables for API keys
echo 3. Run the application using: python main.py
echo.
pause
