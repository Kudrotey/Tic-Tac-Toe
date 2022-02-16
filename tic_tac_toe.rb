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

    

  end





