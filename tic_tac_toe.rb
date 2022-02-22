require './UI/display.rb'
require './GameSetup/user.rb'

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

  




