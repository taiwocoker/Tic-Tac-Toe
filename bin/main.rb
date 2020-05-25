# !/usr/bin/env ruby

require_relative '../lib/board'
require_relative '../lib/validate'

tictactoe = Board.new
validation = Validate.new

def player_move(player_name, validation, board)
  puts "player #{player_name} turn!"
  puts "player #{player_name} select a number from 1 to 9"
  option_selected = gets.chomp

  until validation.valid_input(option_selected)
    puts 'please put a number between 1 to 9 and make sure it has not been selected'
    option_selected = gets.chomp
  end

  validation.update_selected_position(option_selected)

  board.update_board(option_selected, player_name)
  board.display_board
end
