module InspireBot
  class Bot < SlackRubyBot::Bot
    help do
      title 'Inspirational Quote of the day Bot'
      desc 'This bot will generate an inspirational quote of the day for you'

      command :qod do
        title 'qod'
        desc 'This command will give you a randomly generated inspirational quote of the day'
      end

      command :time do
        title 'time'
        desc 'Current Local Time'
      end
    end
  end
end
