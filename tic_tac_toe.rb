class UserName
    attr_accessor :name
    def initialize
        @name = 'Not defined'
    end

    def change_user_name(username_instance)
        puts "Name: "
        username_instance.name = gets.chomp
        # puts "You are playing as #{username_instance.name }"
    end

end


class TicTacToe 

    attr_accessor :score_board, :display_board
    def initialize
        @score_board = ['', '', '',
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

    

  end





