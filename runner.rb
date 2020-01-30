require "./lib/event.rb"
require "./lib/games.rb"

puts "Welcome to Super Sports Games!!!"
puts "Please enter what year it is"
year = $stdin.gets.chomp
games = Games.new(year)
name = ""
ages_array = []

loop do
  puts """
Please select from the following list of options
1. Add new event
2. Get a summary of all events
3. Quit
  """
  input = $stdin.gets.chomp
  break if input.to_i == 3

  if input.to_i == 1
    puts "What is the name of the event?"
    name = $stdin.gets.chomp
    loop do
      puts "please add ages of all players one by one, enter 'done' when you are finished."
      age = $stdin.gets.chomp
      break if age == "done"
      if age.to_i == 0
        "improper input please enter a whole number."
      else
        ages_array << age.to_i
      end
    end
    games.add_event(Event.new(name, ages_array))
  elsif input.to_i == 2
    puts games.summary
  else
    puts "Not a valid input! Please input 1, 2, or 3"
  end
end
