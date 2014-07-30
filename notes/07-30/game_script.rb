require "./guessing_game"

puts "Starting the game"
game = GuessingGame.new

until game.finished?
  print "Enter a guess: "
  number = gets.chomp.to_i
  puts game.guess(number)
end

if game.won?
  puts "You won"
else
  puts "You lost"
end
