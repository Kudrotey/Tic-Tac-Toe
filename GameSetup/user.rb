class UserName
    attr_accessor :players, :current_player
    def initialize
        @players = ['X', 'O']
        @current_player = @players[0]
    end

end