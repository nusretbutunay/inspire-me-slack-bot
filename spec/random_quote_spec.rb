require '../lib/helpers/random_quote'

describe InspireBot::RandomQuote do
  let(:quote) { InspireBot::RandomQuote.new }
  describe 'random_quote' do
    it 'returns a random quote as a String' do
      expect(quote.random_quote).to be_a(String)
    end
  end
end
