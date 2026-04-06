# 🔑 API Keys Setup Guide - Smart Crop Advisory System

## 📋 **Required API Keys**

### **1. Weather API - OpenWeatherMap**
- **Purpose:** Weather alerts and agricultural predictions
- **Get API Key:** https://openweathermap.org/api
- **Free Tier:** 1,000 calls/day
- **Cost:** Free for basic usage
- **Setup Steps:**
  1. Sign up at https://openweathermap.org/api
  2. Verify your email
  3. Go to "API Keys" section
  4. Copy your API key
  5. Set environment variable: `OPENWEATHER_API_KEY=your_key_here`

### **2. Government Market Data APIs**

#### **eNAM (National Agriculture Market)**
- **Purpose:** Real-time market prices for 12,654+ records
- **Website:** https://enam.gov.in/web/
- **API Documentation:** https://enam.gov.in/web/api-documentation
- **Setup:** Contact eNAM for API access

#### **Agmarknet (Agricultural Marketing Information Network)**
- **Purpose:** Market price data across India
- **Website:** http://agmarknet.gov.in/
- **API Access:** http://agmarknet.gov.in/PriceAndArrivals/APIAccess.aspx
- **Setup:** Register and request API access

#### **FCI (Food Corporation of India)**
- **Purpose:** Government procurement prices
- **Website:** https://fci.gov.in/
- **Contact:** For API access, contact FCI directly

### **3. Plant Disease Detection APIs (Optional)**

#### **PlantVillage API**
- **Purpose:** Plant disease identification
- **Website:** https://plantvillage.psu.edu/
- **API Access:** https://plantvillage.psu.edu/api
- **Setup:** Free access, no API key required for basic usage

#### **Google Cloud Vision API**
- **Purpose:** Advanced image analysis
- **Website:** https://cloud.google.com/vision
- **Free Tier:** 1,000 requests/month
- **Setup:**
  1. Create Google Cloud account
  2. Enable Vision API
  3. Create service account
  4. Download JSON key file
  5. Set environment variable: `GOOGLE_APPLICATION_CREDENTIALS=path/to/key.json`

#### **Azure Computer Vision**
- **Purpose:** Plant disease detection
- **Website:** https://azure.microsoft.com/en-us/services/cognitive-services/computer-vision/
- **Free Tier:** 5,000 transactions/month
- **Setup:**
  1. Create Azure account
  2. Create Computer Vision resource
  3. Get API key and endpoint
  4. Set environment variables:
     - `AZURE_VISION_KEY=your_key_here`
     - `AZURE_VISION_ENDPOINT=your_endpoint_here`

### **4. Voice/Speech APIs (Optional)**

#### **Google Text-to-Speech**
- **Purpose:** Voice support for low-literacy users
- **Website:** https://cloud.google.com/text-to-speech
- **Free Tier:** 1 million characters/month
- **Setup:**
  1. Enable Text-to-Speech API
  2. Create service account
  3. Set environment variable: `GOOGLE_TTS_CREDENTIALS=path/to/key.json`

#### **Azure Speech Services**
- **Purpose:** Text-to-speech in Hindi and English
- **Website:** https://azure.microsoft.com/en-us/services/cognitive-services/speech-services/
- **Free Tier:** 5 hours/month
- **Setup:**
  1. Create Speech Services resource
  2. Get API key and region
  3. Set environment variables:
     - `AZURE_SPEECH_KEY=your_key_here`
     - `AZURE_SPEECH_REGION=your_region_here`

## 🛠 **Environment Variables Setup**

Create a `.env` file in your project root:

```bash
# Weather API
OPENWEATHER_API_KEY=your_openweather_api_key_here

# Market Data APIs
ENAM_API_KEY=your_enam_api_key_here
AGMARKNET_API_KEY=your_agmarknet_api_key_here

# Plant Disease Detection
GOOGLE_APPLICATION_CREDENTIALS=path/to/google_vision_key.json
AZURE_VISION_KEY=your_azure_vision_key_here
AZURE_VISION_ENDPOINT=your_azure_vision_endpoint_here

# Voice/Speech APIs
GOOGLE_TTS_CREDENTIALS=path/to/google_tts_key.json
AZURE_SPEECH_KEY=your_azure_speech_key_here
AZURE_SPEECH_REGION=your_azure_speech_region_here
```

## 📱 **Alternative: Mock Data Mode**

If you don't want to set up API keys immediately, the system can run with mock data:

1. **Weather Data:** Uses historical weather patterns
2. **Market Data:** Uses the included 12,654+ records from Excel file
3. **Disease Detection:** Uses rule-based classification
4. **Voice:** Uses system text-to-speech

## 🚀 **Quick Start Without API Keys**

The system is designed to work without external APIs using:
- Built-in SQLite database with agricultural data
- Rule-based disease detection
- Historical market data from Excel files
- System text-to-speech capabilities

## 💡 **Cost Estimation**

### **Free Tier Limits:**
- **OpenWeatherMap:** 1,000 calls/day (sufficient for development)
- **Google Vision:** 1,000 requests/month
- **Azure Vision:** 5,000 transactions/month
- **Google TTS:** 1 million characters/month
- **Azure Speech:** 5 hours/month

### **Production Costs (Estimated):**
- **Weather API:** $40/month for 100,000 calls
- **Vision APIs:** $1.50 per 1,000 images
- **Speech APIs:** $4 per 1 million characters

## 🔧 **Testing API Keys**

Use this Python script to test your API keys:

```python
import os
import requests

def test_weather_api():
    api_key = os.getenv('OPENWEATHER_API_KEY')
    if api_key:
        url = f"http://api.openweathermap.org/data/2.5/weather?q=Delhi&appid={api_key}"
        response = requests.get(url)
        if response.status_code == 200:
            print("✅ Weather API working")
        else:
            print("❌ Weather API failed")
    else:
        print("⚠️ Weather API key not set")

def test_vision_api():
    # Test Google Vision API
    pass

if __name__ == "__main__":
    test_weather_api()
    test_vision_api()
```

## 📞 **Support**

For API setup issues:
1. Check the official documentation for each service
2. Verify your API keys are correct
3. Check rate limits and quotas
4. Ensure proper environment variable setup

---

**Note:** The system can run with minimal API keys or even without them using built-in data and mock responses.
