import sqlite3
import os

# Check market prices data
db_path = 'backend/smart_crop_advisory.db'
if os.path.exists(db_path):
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    # Get sample market prices
    cursor.execute("SELECT commodity, state, district, market, price, unit, date FROM market_prices LIMIT 10")
    prices = cursor.fetchall()

    print("Sample market prices:")
    for price in prices:
        print(f"  {price[0]} - {price[1]}, {price[2]} ({price[3]}): ₹{price[4]} per {price[5]} on {price[6]}")

    # Get unique commodities
    cursor.execute("SELECT DISTINCT commodity FROM market_prices")
    commodities = cursor.fetchall()
    print(f"\nUnique commodities: {[c[0] for c in commodities]}")

    # Get date range
    cursor.execute("SELECT MIN(date), MAX(date) FROM market_prices")
    date_range = cursor.fetchone()
    print(f"Date range: {date_range[0]} to {date_range[1]}")

    conn.close()
else:
    print("Database file not found")
