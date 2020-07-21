require 'slack-ruby-bot'
require_relative '../lib/bot'

describe SlackRubyBot::Commands do
  it 'responds with a random quote of the day' do
    expect(message: "#{SlackRubyBot.config.user} qod").to be_a(Hash)
  end

  it 'responds with current local time' do
    expect(message: "#{SlackRubyBot.config.user} time").to respond_with_slack_message
  end

  it 'responds with current date' do
    expect(message: "#{SlackRubyBot.config.user} date").to respond_with_slack_message
  end

  it 'responds with a random image url' do
    expect(message: "#{SlackRubyBot.config.user} picsum").to respond_with_slack_message
  end

  it 'responds with weather information of the given city' do
    expect(message: "#{SlackRubyBot.config.user} weather").to respond_with_slack_message
  end
end
