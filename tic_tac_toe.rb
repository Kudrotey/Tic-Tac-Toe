class UserName
    attr_accessor :name
    def initialize
        @name = 'Not defined'
    end

    def change_user_name(username_instance)
        puts "Name: "
        username_instance.name = gets
        # puts "You are playing as #{username_instance.name }"
    end

end

class TicTacToe 

    attr_accessor :score_board
    def initialize
        @score_board = [' ', ' ', ' ',
        ' ', ' ', ' ',
        ' ', ' ', ' ']
    end


    def display_board
        puts " #{@score_board[0]} | #{@score_board[1]} | #{@score_board[2]} "
        puts "-----------"
        puts " #{@score_board[3]} | #{@score_board[4]} | #{@score_board[5]} "
        puts "-----------"
        puts " #{@score_board[6]} | #{@score_board[7]} | #{@score_board[8]} "
     end
    
    

     def get_user_input(username_instance)
        puts "#{username_instance.name}: Make your move"
        user_input = gets
        return user_input
        
     end

     def input_to_index(user_input)
        user_input.to_i - 1
     end

     def update_score_board (index)
        @score_board[index] = 'X'
        @score_board
     end

     

    #  def update_score_board
    #  end
     
  end

  

#   Game script
game = TicTacToe.new
  user = UserName.new
  user.change_user_name(user)
  puts game.display_board
  user_input = game.get_user_input(user)
  index = game.input_to_index(user_input)
  game.update_score_board(index)
  puts game.display_board

# Prompt user to make a move
# Test: expect tic_tac_to to output ('name: make a move') to stdout

# Take user input
# Push user input into the array
# Display the display board with user's input

# 


  




