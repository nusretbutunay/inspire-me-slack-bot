require 'net/http'
require 'json'
require_relative '../random_quote'
module InspireBot
  module Commands
    class QodCommand < SlackRubyBot::Commands::Base
      quote = RandomQuote.new
      command 'qod' do |client, data, _match|
        client.say(channel: data.channel, text: quote.random_quote)
      end
    end
  end
end
