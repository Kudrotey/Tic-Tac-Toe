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