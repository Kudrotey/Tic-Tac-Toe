require_relative '../UI/display.rb'
require_relative '../GameSetup/user.rb'
require 'pry'

class Game

    attr_accessor :remaining_places
    def initialize
        @remaining_places = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    end

    def get_user_input(username_instance, remaining_places)
        puts "#{username_instance.current_player}: Make your move"
        user_input = gets
        user_input = user_input.to_i - 1

        while !valid_move?(remaining_places, user_input) do 
            user_input = gets
            user_input = user_input.to_i - 1
        end     
        return user_input
    end

     def position_available?(remaining_places, chosen_index)
 
        if remaining_places.include?(chosen_index)
            return true
        else
            return false
        end
     end
 
    def valid_move?(remaining_places, chosen_index)
        if chosen_index.between?(0,8) && !position_available?(remaining_places, chosen_index)
            puts 'This position has been taken. Choose again'
            return false 
        elsif chosen_index.between?(0,8) && position_available?(remaining_places, chosen_index)
            return true
        elsif !chosen_index.between?(0,8)
            puts 'Please select a number between 1 and 9'
            return false
        end
    end

    def check_winner?(score_board, current_player)
        if score_board[0] == current_player && score_board[1] == current_player && score_board[2] == current_player
            return true
        elsif score_board[3] == current_player && score_board[4] == current_player && score_board[5] == current_player
            return true
        elsif score_board[6] == current_player && score_board[7] == current_player && score_board[8] == current_player
            return true
        elsif score_board[0] == current_player && score_board[3] == current_player && score_board[6] == current_player
            return true
        elsif score_board[1] == current_player && score_board[4] == current_player && score_board[7] == current_player
            return true
        elsif score_board[2] == current_player && score_board[5] == current_player && score_board[8] == current_player
            return true
        elsif score_board[6] == current_player && score_board[4] == current_player && score_board[2] == current_player
            return true
        elsif score_board[0] == current_player && score_board[4] == current_player && score_board[8] == current_player
            return true
        else
            return false
        end
    end


    # WINNING_COMBINATIONS = [
    #     [0, 1, 2], 
    #     [3, 4, 5], 
    #     [6, 7, 8], 
    #     [0, 3, 6],
    #     [1, 4, 7],
    #     [2, 5, 8],
    #     [6, 4, 2],
    #     [0, 4, 8]
    # ]


    def ai_move_selection(remaining_places)
        random_selection = remaining_places.sample
        return random_selection

    end

    def update_remaining_places (remaining_places, random_selection)
        remaining_places.delete(random_selection)
        return remaining_places
    end
end 