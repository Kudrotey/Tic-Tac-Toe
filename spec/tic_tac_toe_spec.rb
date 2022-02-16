require_relative '../tic_tac_toe.rb'
require 'stringio'

describe UserName do
    it 'username initialises as "Not defined"' do
        user_name = described_class.new
        expect(user_name.name).to eq('Not defined')
    end
    
    describe 'Update user' do
        it 'Can receive user input and change user name' do
            $stdin = StringIO.new('Lee')
            user_name = UserName.new
            
            expect{user_name.change_user_name(user_name)}. to output("Name: \n").to_stdout.and change {user_name.name}.to('Lee')
        end
    end
end

describe TicTacToe do
    describe 'score_board' do 
        it 'Can return an array with 9 empty strings' do
            tic_tac_toe = described_class.new
        
            expect(tic_tac_toe.score_board).to eq (['', '', '',
        '', '', '',
        '', '', ''])
        end
    end
    describe 'display_board' do
        it 'Can display a 3 x 3 grid in the terminal' do
            tic_tac_toe = described_class.new
            row = "   " "|" "   " "|" "   \n"
            separator = "----------- \n"
            expect{tic_tac_toe.display_board}.to output("   " "|" "   " "|" "   \n" "-----------\n" "   " "|" "   " "|" "   \n" "-----------\n" "   " "|" "   " "|" "   \n").to_stdout
        end
    
    end
    


    
    


    # it '' do
    #     tic_tac_toe = described_class.new
        
    #     expect()
    # end

 
end

# Can return an array of 9 empty strings
# Can display empty grid to the terminal

# Can take user input an populate one string in the array
# Display updated grid with player 1's input