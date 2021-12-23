# Creates Board
class Board
  def initialize
    @line_zero = [' | 1 | 2 | 3 |']
    @line_one = ['1|   |   |   |']
    @line_two = ['2|   |   |   |']
    @line_three = ['3|   |   |   |']
  end

  # Puts Board to Terimal
  def show_board
    puts @line_zero
    puts @line_one
    puts @line_two
    puts @line_three
  end
end

# Class for O Pieces
class Pieceoh
  attr_accessor :array_num, :space_num

  def initialize(array_num, space_num)
    @array_num = array_num
    @space_num = space_num
  end
end

# Class for X Pieces
class Piecex
  attr_accessor :array_num, :space_num

  def initialize(array_num, space_num)
    @array_num = array_num
    @space_num = space_num
  end
end

# Run Game
game = Board.new
game.show_board

turn_one = Pieceoh.new(2, 3)
puts turn_one.array_num

turn_two = Piecex.new(1, 3)
puts turn_two.array_num
