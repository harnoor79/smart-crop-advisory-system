# RAG Pipeline Implementation and Data Integration TODO

## 1. Data Ingestion
- [x] Create `backend/data_ingestion.py` module for fetching mandi prices and weather data
- [x] Implement function to fetch mandi prices from Agmarknet API or similar source
- [x] Implement function to fetch weather data and generate alerts from OpenWeather API
- [x] Add background tasks in `main.py` to periodically fetch and store data in MarketPrice and WeatherAlert tables
- [x] Handle API errors and data validation during ingestion

## 2. Data Retrieval for RAG
- [ ] Create `backend/data_retrieval.py` module with functions to query relevant data
- [ ] Implement function to retrieve mandi prices based on commodity, state, district
- [ ] Implement function to retrieve weather alerts based on location and user
- [ ] Implement function to retrieve policy data and other relevant context
- [ ] Add semantic search or filtering for relevant data retrieval

## 3. Chatbot Enhancement
- [x] Modify `backend/chatbot.py` to implement RAG pipeline
- [x] Add data retrieval calls to get relevant mandi, weather, and policy data
- [x] Update the prompt to include retrieved data as context for OpenAI
- [x] Handle cases where data is not available or retrieval fails
- [x] Optimize prompt length to stay within token limits

## 4. API Enhancements
- [x] Add `/data-refresh` endpoint in `main.py` to manually trigger data ingestion
- [ ] Enhance `/mandi-prices` and `/weather` endpoints to use stored data instead of mock/real-time only
- [x] Add `/chatbot-enhanced` endpoint that uses RAG for better responses
- [x] Update health check to include data ingestion status

## 5. Testing and Validation
- [ ] Test data ingestion by running background tasks and verifying database entries
- [ ] Test data retrieval functions with sample queries
- [ ] Test chatbot RAG with sample agricultural questions involving mandi prices and weather
- [ ] Validate response quality and accuracy
- [ ] Run end-to-end tests with the full pipeline
