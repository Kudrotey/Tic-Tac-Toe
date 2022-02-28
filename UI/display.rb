class Display
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

     def update_score_board (user_name, index)
        @score_board[index] = user_name.current_player
        @score_board
     end

    #  Maybe change update_score_board to make_move

    # board = Display.new
    # puts board.display_board
end