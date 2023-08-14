from flask import Flask, jsonify
import requests

app = Flask(__name__)

# OpenWeatherMap API Key
API_KEY = ${{ secrets.API_KEY }}

@app.route('/ping')
def ping():
    return "<h1>PONG</h1>", 200

@app.route('/')
def weather():
    # Fetch current weather data from OpenWeatherMap API for London, UK
    weather_url = f"https://api.openweathermap.org/data/2.5/weather?q=London,uk&appid={API_KEY}&units=metric"
    response = requests.get(weather_url)

    if response.status_code == 200:
        data = response.json()
        weather_description = data["weather"][0]["description"]
        temperature = data["main"]["temp"]

        return f"<h1>Current weather in London, UK: {weather_description}, {temperature}°C</h1>", 200
    else:
        return "<h1>Failed to fetch weather data</h1>", 500

@app.route('/health')
def health():
    health_status = {"status": "HEALTHY"}
    return jsonify(health_status), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0',port=8080)
