# This is a basic setup to get Ru working
# She can respond when you tell her Hey Ru
require 'discordrb'


rubot = Discordrb::Bot.new token: '<token-here>', client_id: 505482320523034624

rubot.message(with_text: 'Hey Ru') do |event|
  event.respond 'Hello Human :)'
end 

rubot.run

