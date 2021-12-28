# Trying to create global tic-tac-toe board
row_zero = [' | 1 | 2 | 3 |']
row_one = ['1|   |   |   |']
row_two = ['2|   |   |   |']
row_three = ['3|   |   |   |']

# Creates Board
class Board
  attr_accessor :line_one, :line_two, :line_three

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

# Module for calculating array placement
module Placement
  def calculate_array(array_num)
    if array_num == 1
      game.line_one
    elsif array_num == 2
      puts game.line_two
    else
      game.line_three
    end
  end
end

# Creates instance of Board class
game = Board.new
game.show_board
puts game.line_two

# Class for O Pieces
class Pieceoh
  attr_accessor :array_num, :space_num, :display

  include Placement
  def initialize(array_num, space_num)
    @array_num = array_num
    @space_num = space_num
    @display = 'O'
  end
end

# Class for X Pieces
class Piecex
  attr_accessor :array_num, :space_num, :display

  def initialize(array_num, space_num)
    @array_num = array_num.to_i
    @space_num = space_num.to_i
    @display = 'X'
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
