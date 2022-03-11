# require_relative '../tic_tac_toe.rb'
require_relative '../GameSetup/user.rb'
require_relative '../GameSetup/game.rb'
require_relative '../UI/display.rb'
require 'stringio'

describe UserName do
    it "initialises array of 'X' and 'O'" do
        user_name = described_class.new
        expect(user_name.players).to eq(['X', 'O'])
    end
end

describe Display do
    describe 'display_board' do
        it 'Can display a 3 x 3 grid in the terminal' do
            display = described_class.new
            score_board = display.score_board
            expect{display.display_board}.to output("\n #{score_board[0]} " "|" " #{score_board[1]} " "|" " #{score_board[2]} \n" "-----------\n" " #{score_board[3]} " "|" " #{score_board[4]} " "|" " #{score_board[5]} \n" "-----------\n" " #{score_board[6]} " "|" " #{score_board[7]} " "|" " #{score_board[8]} \n\n").to_stdout
        end
    end

    describe 'score_board' do 
        it 'Can return an array with 9 empty strings' do
            display = described_class.new
            
            expect(display.score_board).to eq ([' ', ' ', ' ',
                                                    ' ', ' ', ' ',
                                                  ' ', ' ', ' '])
        end
    end

    describe 'update_score' do
        it 'Can apply score for human player' do
            display = described_class.new
            user_name = UserName.new
            expect(display.update_score_board(user_name, 0)). to eq(['X', ' ', ' ',
                                                                         ' ', ' ', ' ',
                                                                         ' ', ' ', ' '])
        end
        it 'Can apply score for AI player' do
            display = described_class.new
            user_name = UserName.new
            user_name.current_player = 'O'
            expect(display.update_score_board(user_name, 0)). to eq(['O', ' ', ' ',
                                                                         ' ', ' ', ' ',
                                                                         ' ', ' ', ' '])
        end
    end
end



describe Game do
    describe 'position_available?' do
        it 'returns false if board position is taken' do
            game = described_class.new
            # display = Display.new
            # score_board = display.score_board
            index = 3
            remaining_places = [0, 1, 2, 4, 5, 6, 7, 8]

            expect(game.position_available?(remaining_places, index)).to be false
        end
        it 'returns true if board position is free' do
            game = described_class.new
            index = 3
            remaining_places = [0, 1, 2, 3, 4, 5, 6, 7, 8]

            expect(game.position_available?(remaining_places, index)).to be true
        end
    end

    describe 'get_user_input' do 
        it 'Prompts the user to select their move' do
            game = described_class.new
            user_name = UserName.new
            remaining_places = [0, 1, 2, 3, 4, 5, 6, 7, 8]
            # $stdin = StringIO.new('2') 
            allow(game).to receive(:gets).and_return('2')
    
            expect{game.get_user_input(user_name, remaining_places)}.to output("#{user_name.current_player}: Make your move\n").to_stdout
        end
      
    end    

    describe 'valid_move?' do
        it 'returns true if the input is within the length of the score_board array and space is available' do
            game = described_class.new
            display = Display.new
            remaining_places = [0, 1, 2, 3, 4, 5, 6, 7, 8]
            index = 3

            expect(game.valid_move?(remaining_places, index)).to be true
        end

        it 'returns false if the input is not between 0-8 of the score_board array and space is not available' do
            game = described_class.new
            display = Display.new
            remaining_places = [0, 1, 2, 3, 4, 5, 6, 7, 8]
            index = 10

            expect(game.valid_move?(remaining_places, index)).to be false
        end

    end

    describe 'ai_move_selection' do
        it 'can produce a random number between 0-8' do
            game = described_class.new

            remaining_places = [0, 1, 2,
                                3, 4, 5,
                                6, 7, 8]

            expect(game.ai_move_selection(remaining_places)).to be_between(0, 8)
          
        end
        it 'Returns random selection' do
            game = described_class.new
            remaining_places = [0, 1, 2, 3, 4]
            
            expect(game.ai_move_selection(remaining_places)).to be_between(0, 4)
        end
      
    end

    describe 'update_remaining_places' do
        it 'returns the updated remaining places array' do
            game = described_class.new
            remaining_places = [3,6,7,8]
            selection = 6
            expect(game.update_remaining_places(remaining_places,selection)).to eq([3,7,8])
        end    
    end

    describe 'check_winner' do
        it 'Returns false if no winning combination' do 
            game = described_class.new
            score_board =   ['X', ' ', 'X',
                            ' ', ' ', ' ',
                            ' ', ' ', ' ']
            current_player = 'X'

            expect(game.check_winner?(score_board, current_player)).to be false
        end

        it 'Returns true for winning combination on the top line' do
            game = described_class.new
            score_board =   ['X', 'X', 'X',
            ' ', ' ', ' ',
            ' ', ' ', ' ']
            current_player = 'X'
            
            expect(game.check_winner?(score_board, current_player)).to be true
        end

        it 'Returns true for winning combination on the top line' do
            game = described_class.new
            score_board =   [' ', ' ', ' ',
            'X', 'X', 'X',
            ' ', ' ', ' ']
            current_player = 'X'
            
            expect(game.check_winner?(score_board, current_player)).to be true
        end

        it 'Returns true for winning combination on the top line' do
            game = described_class.new
            score_board =   [' ', ' ', ' ',
            ' ', ' ', ' ',
            'X', 'X', 'X']
            current_player = 'X'
            
            expect(game.check_winner?(score_board, current_player)).to be true
        end
        
        it 'Returns true for winning combination on the top line' do
            game = described_class.new
            score_board =   ['X', ' ', ' ',
            'X', ' ', ' ',
            'X', ' ', ' ']
            current_player = 'X'
            
            expect(game.check_winner?(score_board, current_player)).to be true
        end

        it 'Returns true for winning combination on the top line' do
            game = described_class.new
            score_board =   [' ', 'X', ' ',
            ' ', 'X', ' ',
            ' ', 'X', ' ']
            current_player = 'X'
            
            expect(game.check_winner?(score_board, current_player)).to be true
        end

        it 'Returns true for winning combination on the top line' do
            game = described_class.new
            score_board =   [' ', ' ', 'X',
            ' ', ' ', 'X',
            ' ', ' ', 'X']
            current_player = 'X'
            
            expect(game.check_winner?(score_board, current_player)).to be true
        end

        it 'Returns true for winning combination on the top line' do
            game = described_class.new
            score_board =   ['X', ' ', ' ',
            ' ', 'X', ' ',
            ' ', ' ', 'X']
            current_player = 'X'
            
            expect(game.check_winner?(score_board, current_player)).to be true
        end

        it 'Returns true for winning combination on the top line' do
            game = described_class.new
            score_board =   [' ', ' ', 'X',
            ' ', 'X', ' ',
            'X', ' ', ' ']
            current_player = 'X'
            
            expect(game.check_winner?(score_board, current_player)).to be true
        end
    end

end

        