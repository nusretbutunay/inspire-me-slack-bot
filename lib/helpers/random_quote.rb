require 'net/http'
require 'json'

module InspireBot
  attr_reader :quote
  class RandomQuote
    def initialize
      @url = 'https://type.fit/api/quotes'
      @uri = URI(@url)
      @response = Net::HTTP.get(@uri)
    end

    def random_quote
      quote = JSON.parse(@response).sample
      "#{quote['text']} \n (#{quote['author']})"
    end
  end
end
