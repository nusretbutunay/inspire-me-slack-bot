require 'net/http'
require 'json'
require_relative '../helpers/random_quote'
require_relative '../helpers/weather'

module InspireBot
  module Commands
    class QodCommand < SlackRubyBot::Commands::Base
      quote = RandomQuote.new
      forecast = Weather.new

      command 'qod' do |client, data, _match|
        client.say(channel: data.channel, text: quote.random_quote)
      end

      command 'time' do |client, data, _match|
        t = Time.new
        client.say(channel: data.channel, text: "It is #{t.strftime('%I:%M %p')}")
      end

      command 'date' do |client, data, _match|
        t = Time.new
        client.say(channel: data.channel, text: "Today is #{t.strftime('%a , %B %d %Y')}")
      end

      command 'picsum' do |client, data, _match|
        client.say(channel: data.channel, text: 'https://picsum.photos/200/300')
      end

      match(/^weather (?<location>\w*)$/) do |client, data, match|
        temp = forecast.current_weather(match[:location])
        client.say(channel: data.channel, text: temp)
      end
    end
  end
end
