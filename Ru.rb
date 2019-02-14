# This is a basic setup to get Ru working
# She can respond when you tell her Welcome Ru and no problem ru

require 'rubygems'
require 'discordrb'
require 'json'

file = File.read('db/info.json')
ru_info = JSON.parse(file)

rubot = Discordrb::Bot.new token: ru_info["token"]

rubot.message(content: "Welcome Ru") do |greeting|
  sleep 2
  greeting.respond "Hello #{greeting.user.name}! :)"
  sleep 3
  greeting.respond "...unfortunately all I can say right now is hello."
end 

rubot.message(content: "Hi Ru") { |hi| hi.respond "Hi #{greeting.user.name}!" }

rubot.message(content: "no problem Ru") do |event|
  sleep 2
  event.respond "<3"
end

rubot.send_message(ru_info["#general"], "Rubot initializing...Hello World")
rubot.run 



