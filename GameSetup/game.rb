require_relative '../UI/display.rb'
require_relative '../GameSetup/user.rb'
require 'pry'

class Game

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

    def position_taken?(display, chosen_index)
        if display.score_board[chosen_index] == 'X' || display.score_board[chosen_index] == 'O'
            return true
        else
            return false
        end
    end

    def valid_move?(display, chosen_index)
        if chosen_index.between?(0,8) && !position_taken?(display, chosen_index)
            return true
        else
            return false
        end
    end

    def ai_move_selection(display)
        random_num = rand(8)
        return random_num
    end

    # turn_count = 0
    # if even, human's turn
    # if od AI's turn
    # turn_count
    # needs access to players array and current_player (from user)
end 