#!usr/bin/env ruby

valid_options = %w[1,2,3,4,5,6,7,8,9]
choice_options = []
game_won = false
board = 1

while board <= valid_options.size
  puts "Player 1, it is your turn"
  puts "player 1,select between number 1 and 9"
  choice_selected = gets.chomp

  until valid_options.include?(choice_selected) && 
end