require 'net/http'
require 'json'
require_relative '../helpers/random_quote'

module InspireBot
  module Commands
    class QodCommand < SlackRubyBot::Commands::Base
      quote = RandomQuote.new
      command 'qod' do |client, data, _match|
        client.say(channel: data.channel, text: quote.random_quote)
      end

      command 'time' do |client, data, _match|
        t = Time.new
        client.say(channel: data.channel, text: "It is #{t.strftime("%I:%M %p")}")
      end

      command 'date' do |client, data, _match|
        t = Time.new
        client.say(channel: data.channel, text: "Today is #{t.strftime("%a , %B/%d/%Y")}")
      end
    end
  end
end
