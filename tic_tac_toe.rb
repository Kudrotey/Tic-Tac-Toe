require_relative './UI/display.rb'
require_relative './GameSetup/user.rb'
require_relative './GameSetup/game.rb'

class TicTacToe 

   tic_tac_toe = TicTacToe.new
   display = Display.new
   user = UserName.new
   game = Game.new
   current_player = user.current_player
   score_board = display.score_board
   remaining_places = game.remaining_places

   display.display_board

   while remaining_places.length > 0 do
      if !game.check_winner?(score_board, user.players[1])
         # Human player move (X)
         user.current_player = user.players[0]
         user_input = game.get_user_input(user, remaining_places)
         display.update_score_board(user, user_input)
         display.display_board
         game.update_remaining_places(remaining_places, user_input)
      else
         puts "#{user.players[1]} wins!"
         break
      end
      
      if game.remaining_places.length == 0 && !game.check_winner?(score_board, user.current_player)
         puts "It's a draw!"
         break
      end
        
      if !game.check_winner?(score_board, user.players[0])
         # AI player move (O)
         puts "#{user.players[1]}: Make your move"
         user.current_player = user.players[1]
         random_selection = game.ai_move_selection(game.remaining_places)
         display.update_score_board(user, random_selection)
         display.display_board
         game.update_remaining_places(remaining_places, random_selection)
      else
         puts "#{user.players[0]} wins!"
         break
      end
   end
end











