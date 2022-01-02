# Creates Board
class Board
  attr_accessor :line_one, :line_two, :line_three

  # Creates Class Variables for all sub-classes to access (board)
  @@row_zero = [' | 1 | 2 | 3 |']
  @@row_one = ['1|   |   |   |']
  @@row_two = ['2|   |   |   |']
  @@row_three = ['3|   |   |   |']

  def initialize
  end

  # Puts Board to Terimal
  def show_board
    puts @@row_zero
    puts @@row_one
    puts @@row_two
    puts @@row_three
  end
end

# Module for calculating array placement
module Placement
  def calculate_array(array_num)
    if array_num == 1
     @@row_one
    elsif array_num == 2
     @@row_two
    else
      @@row_three
    end
  end
end

# Creates instance of Board class
game = Board.new
game.show_board
puts game.line_two

# Class for O Pieces
class Pieceoh < Board
  attr_accessor :array_num, :space_num, :display

  include Placement
  def initialize(array_num, space_num)
    @array_num = array_num
    @space_num = space_num
    @display = 'O'
    super
  end
end

# Class for X Pieces
class Piecex < Board
  attr_accessor :array_num, :space_num, :display

  def initialize(array_num, space_num)
    @array_num = array_num.to_i
    @space_num = space_num.to_i
    @display = 'X'
    super
  end
end

# Run Game

turn_one = Pieceoh.new(2, 3)
puts turn_one.array_num
puts turn_one.space_num
puts turn_one.display
puts turn_one.calculate_array(2)

turn_two = Piecex.new(1, 3)
puts turn_two.array_num
puts turn_two.space_num
puts turn_two.display
