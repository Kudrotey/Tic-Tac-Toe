require './UI/display.rb'
require './GameSetup/user.rb'
require './GameSetup/game.rb'

class TicTacToe 

     def get_user_input(username_instance)
        puts "#{username_instance.current_player}: Make your move"
        user_input = gets
        return user_input
        
     end

     def input_to_index(user_input)
        user_input.to_i - 1
     end

     end

#   Game script
#   game = TicTacToe.new
#   display = Display.new
#   user = UserName.new
#   user.change_user_name(user)
#   puts display.display_board
#   user_input = game.get_user_input(user)
#   index = game.input_to_index(user_input)
#   display.update_score_board(index)
#   puts display.display_board

# [
#     ['', '', ''],
#     ['', '', ''],
#     ['', '', '']
#     ];

# tictactoe = TicTacToe.new
# display = Display.new
# game = GameSetup.new
# user = GameSetup.new

# remaining_places = game.remaining_places

# # In TicTacToe
# display.display_board
# tic_tac_toe.get_user_input

# current_player = user.current_player
# chosen_index = tic_tac_toe.input_to_index

# # In Display

# display.update_score_board (current_player, chosen_index)
# display.display_board

# # In Game

# game.update_remaining_places(remaining_places, selection)

# game.ai_move_selection(remaining_places)
# display.update_score_board(user_name_ai, random_selection)
# display.display_board
  




