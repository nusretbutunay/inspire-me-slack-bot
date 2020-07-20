require 'net/http'
require 'json'

module InspireBot
  attr_reader :forecast
  class Weather
    API_KEY = '1fdc8f2066cefcc799fcd789b3199c56'.freeze

    def current_weather(city)
      @url = "http://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=1fdc8f2066cefcc799fcd789b3199c56"
      @uri = URI(@url)
      @response = Net::HTTP.get(@uri)
      forecast = JSON.parse(@response)
      "The weather in #{city}:  #{forecast['weather'][0]['description']}" \
        "The temperature in #{city}:  #{((forecast['main']['temp']).to_i - 273.15).truncate(2)} °C"
    end
  end
end
