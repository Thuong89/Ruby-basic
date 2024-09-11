#PROGRAM TIC TAC TOE (classic)
   # def basic
   # WIP: define winner

class TICTACTOE
    @@board= [[1,2,3],[4,5,6],[7,8,9]]
    @@px=nil
    @@count=0
    #----------
    def play
        p "Which position do you choose?"
        @@px=gets.chomp.to_i
        return @@px
    end
    #-----------
    def print_board
        @@board.each do |board_row|
            p " --------- "
            p board_row.map {|element | '| ' + element.to_s+ ' '}.join
        end
    end
    #----------

      #----------
    def start_playing
        @@count=@@count+1
        p=play()
        row=(@@px-1)/3
        col=(@@px%3) -1
            if @@board[row][col].is_a?(Integer) && @@count.odd?
                   @@board[row][col] ="x"
                   print_board()
              
            elsif @@board[row][col].is_a?(Integer) && @@count.even?
                @@board[row][col] ="o"
                print_board()             
            else
                p"Sorry. The position is already selected in previous turn. Select again!"
                if @@board[row][col]=="x"
                  p=play()
                  row=(@@px-1)/3
                  col=(@@px%3) -1
                  @@board[row][col] ="o"
                  print_board()
                end
                if @@board[row][col]=="o"
                  p=play()
                  row=(@@px-1)/3
                  col=(@@px%3) -1
                  @@board[row][col] ="x"
                  print_board()
                end

            end
        while @@count < 9 do
            start_playing()  
        end
    end
end

game=TICTACTOE.new
game.start_playing