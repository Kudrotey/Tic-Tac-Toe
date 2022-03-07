require_relative '../UI/display.rb'
require_relative '../GameSetup/user.rb'
require_relative '../tic_tac_toe.rb'
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
        
        return random_selection

    end

    def update_remaining_places (remaining_places, random_selection)
        remaining_places.delete(random_selection)
        return remaining_places
    end

    

end 




