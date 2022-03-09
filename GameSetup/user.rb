class UserName
    attr_accessor :players, :current_player
    def initialize
        @players = ['X', 'O']
        @current_player = @players[1]
    end

    # def change_user_name(username_instance)
    #     puts "Name: "
    #     username_instance.name = gets
    #     # puts "You are playing as #{username_instance.name }"
    # end

end

# human is defined as 'X' , AI defined as 'O'
# Message to user - 'Player is X, AI is 'O

# Randomise who goes first and display a message (use rand method)
# Variable to keep track of turns

# Ai makes random selection between 0, 8 (use valid_input methods and positon_taken methods)
# Human is asked for input
# Human inputs a number (get_user_input / input_to_index)
# Valid_move / position_taken?
# update_score_board
# Change 'turns' variable back to AI


# When Turns = AI --> random_index, Valid_move / position_taken?/ update_score_board

# decide_winner function - evaluates to true once winning combination is achieved