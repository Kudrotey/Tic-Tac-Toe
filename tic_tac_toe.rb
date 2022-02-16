class UserName
    attr_accessor :name
    def initialize
        @name = 'Not defined'
    end

end


class TicTacToe 
    def score_board
    score_array = ['', '', '',
    '', '', '',
    '', '', '']
    end

    def display_board
        row =  ["   " "|" "   " "|" "   "]
        separator = "-----------"

        puts row
        puts separator
        puts row
        puts separator
        puts row        
    end

    def change_user_name(username_instance)
        # puts username_instance.name
        puts "Name: "
        username_instance.name = gets.chomp
        # puts "You are playing as #{username_instance.name }"
    end

  end
#   user = UserName.new
#   game = TicTacToe.new
#   puts game.change_user_name(user)



# example =  TicTacToe.new
# puts example.change_user_name(UserName.new())




