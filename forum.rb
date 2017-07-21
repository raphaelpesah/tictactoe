class Board

  def initialize
    @board = Array.new(3) { Array.new(3, " ") }
  end

  def printInstructions
    puts "Les deux joueurs choisissent une case à tour de rôle"
    puts "1 | 2 | 3",
         "---------",
         "4 | 5 | 6",
         "---------",
         "7 | 8 | 9"
  end

  def printBoard
    (0..2).each do |ligne|

      (0..2).each do |col|
        print @board[ligne][col]
        print "|" unless col == 2
      end
      print "\n"
      print "------\n" unless ligne == 2
    end

  end

  def findWinner
    #  X X X        X
    #          &    X
    #               X

    (0..2).each do |i|
      if @board[i][0] == @board[i][1] && @board[i][1] == @board[i][2]
        return @board[i][0] unless @board[i][0] == " "

      elsif @board[0][i] == @board[1][i] && @board[1][i] == @board[2][i]
        return @board[0][i] unless @board[0][i] == " "
      end
    end

    #  X               X
    #    X     &     X
    #      X       X

    if ( @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2] ) ||
       ( @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0] )
      return @board[1][1] unless @board[1][1] == " "
    end

    #  X O X
    #  X O X
    #  O X O

    return "C" unless @board.join.split('').include?(" ")

    # Undecided

    return "U"
  end

  def dropCase(case, ligne, col)
    @board[ligne][col] = piece if (0..2) === ligne &&
                                (0..2) === col &&
                                @board[ligne][col] == " "
  end
end

board = Board.new
active_player = "X"

puts "\n" * 100
board.printInstructions

while board.findWinner == "U"

  puts "Au tour de #{active_player}. Choisis une case!"
  move = gets.chomp.to_i - 1
  row = move / 3
  col = move % 3

  puts "\n" * 100

  if board.dropCase(active_player, ligne, col)
    if active_player == "X"
      active_player = "O"
    else
      active_player = "X"
    end
  else
    puts "Mauvais mouvement, recommence"
  end

  board.printBoard
end

winner = board.findWinner


  if winner == "C"
    puts "Match nul"
  else
    puts "     #{winner} a gagné"
  end


board.printBoard
