require_relative './UI/display.rb'
require './GameSetup/user.rb'
require_relative './GameSetup/game.rb'

class TicTacToe 

     def get_user_input(username_instance, remaining_places)
        puts "#{username_instance.current_player}: Make your move"
        user_input = gets
        user_input.to_i - 1
      while !remaining_places.include?(user_input) do
         puts 'That position has already been taken. Choose Again'
         user_input = gets
         user_input.to_i - 1
      end
      return user_input
        
     end

   #   def input_to_index(user_input)
   #      user_input.to_i - 1
   #   end

end



tic_tac_toe = TicTacToe.new
display = Display.new
user = UserName.new
game = Game.new


# Human player first move. Displays the board, takes and adds selection and removes from remaining places array
# Need to add error handling for invalid move for human player

# First Round
display.display_board
user_input = tic_tac_toe.get_user_input(user)
chosen_index = tic_tac_toe.input_to_index(user_input)
display.update_score_board(user, chosen_index)
display.display_board
game.update_remaining_places(game.remaining_places, chosen_index)
user.current_player = user.players[1]

#AI player move
random_selection = game.ai_move_selection(game.remaining_places)
display.update_score_board(user, random_selection)
display.display_board
game.update_remaining_places(game.remaining_places, random_selection)
user.current_player = user.players[0]

# Second Round
user_input = tic_tac_toe.get_user_input(user)
chosen_index = tic_tac_toe.input_to_index(user_input)
while game.position_taken? do
display.update_score_board(user, chosen_index)
display.display_board
game.update_remaining_places(game.remaining_places, chosen_index)
user.current_player = user.players[1]

random_selection = game.ai_move_selection(game.remaining_places)
display.update_score_board(user, random_selection)
display.display_board
game.update_remaining_places(game.remaining_places, random_selection)
user.current_player = user.players[0]

# Third Round
user_input = tic_tac_toe.get_user_input(user)
chosen_index = tic_tac_toe.input_to_index(user_input)
display.update_score_board(user, chosen_index)
display.display_board
if game.check_winner?(display.score_board, user.current_player)
   puts 'Player won'
end
game.update_remaining_places(game.remaining_places, chosen_index)
user.current_player = user.players[1]

random_selection = game.ai_move_selection(game.remaining_places)
display.update_score_board(user, random_selection)
display.display_board
game.update_remaining_places(game.remaining_places, random_selection)
user.current_player = user.players[0]






