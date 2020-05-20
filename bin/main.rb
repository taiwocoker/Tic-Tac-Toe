#!/usr/bin/env ruby

valid_options = %w[1,2,3,4,5,6,7,8,9]
choice_options = []
game_won = false
board = 1

while board <= valid_options.size
  puts 'Player 1, it is your turn'
  puts 'player 1,select between number 1 and 9'
  # prompt user for a selection
  choice_selected = gets.chomp
  # check if the choice selected is valid and the position is not taken
  until valid_options.include?(choice_selected) && !choice_options.include?(choice_selected)
    puts 'please put a number between 1 and 9 and make sure it has not been selected'
    choice_selected = gets.chomp
  end

  # update the board
  puts 'The board has now been updated'
  choice_options.push(choice_selected)
  puts 'The board is displayed'

  return puts 'player 1 has won the game' if game_won
  return puts 'The game has ended in draw' if board == valid_options.size

  board += 1

  puts 'Player 2, it is your turn'
  puts 'player 2,select between number 1 and 9'
  # prompt user for a selection
  choice_selected = gets.chomp
  # check if the choice selected is valid and the position is not taken
  until valid_options.include?(choice_selected) && !choice_options.include?(choice_selected)
    puts 'please put a number between 1 and 9 and make sure it has not been selected'
    choice_selected = gets.chomp
  end

  # update the board
  puts 'The board has now been updated'
  choice_options.push(choice_selected)
  puts 'The board is displayed'

  return puts 'player 2 has won the game' if game_won
  return puts 'The game has ended in draw' if board == valid_options.size

  board += 1
end
