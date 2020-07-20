require '../lib/helpers/weather'

describe InspireBot::Weather do
  let(:forecast) { InspireBot::Weather.new }
  describe 'current_weather' do
    it 'returns the title of the help command' do
      expect(forecast.current_weather('Paris')).to be_a(String)
    end
  end
end
