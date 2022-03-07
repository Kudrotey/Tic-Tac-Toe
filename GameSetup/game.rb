require_relative '../UI/display.rb'
require_relative '../GameSetup/user.rb'
require 'pry'

class Game

    attr_accessor :remaining_places
    def initialize
        @remaining_places = [0, 1, 2,
        3, 4, 5,
        6, 7, 8]
    end

    WINNING_COMBINATIONS = [
        [0, 1, 2], 
        [3, 4, 5], 
        [6, 7, 8], 
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [6, 4, 2],
        [0, 4, 8]
    ]

    def position_taken?(score_board, chosen_index)
        if score_board[chosen_index] == 'X' || score_board[chosen_index] == 'O'
            return true
        else
            return false
        end
    end

    def valid_move?(score_board, chosen_index)
        if chosen_index.between?(0,8) && !position_taken?(score_board, chosen_index)
            return true
        else
            return false
        end
    end

    def ai_move_selection(remaining_places)
        
        random_selection = remaining_places.sample
        remaining_places.delete(random_selection)
        return random_selection
        # if valid_move?(display, random_num)
        #     return random_num
        # else
        #     random_num += 1
        #     valid_move?(display, random_num

        #     # ai_move_selection(display)
        # end

        # while !valid_move?(display, random_num)
        #     random_num = rand(8)
        # end
        # return random_num

    end

    # ai_move_selection passing without else condition - need to try filling up the board to test if it being invoked again.

    # May not need calls valid_move test, first test may be sufficient

    

    # turn_count = 0
    # if even, human's turn
    # if od AI's turn
    # turn_count
    # needs access to players array and current_player (from user)
end 

# game = Game.new

# display = ['X', ' ', ' ',
# ' ', ' ', ' ',
# ' ', ' ', ' ']

# puts game.ai_move_selection(display)