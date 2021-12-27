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

# Module for calculating array placement
module Placement
  def calculate_array(array_num)
    insert_array = ''
    if array_num == 1
      insert_array = 'line_one'
    elsif array_num == 2
      insert_array = 'line_two'
    else
      insert_array = 'line_three'
    end
    insert_array
  end
end

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
game = Board.new
game.show_board

turn_one = Pieceoh.new(2, 3)
puts turn_one.array_num
puts turn_one.space_num
puts turn_one.display
puts turn_one.calculate_array(2)

turn_two = Piecex.new(1, 3)
puts turn_two.array_num
puts turn_two.space_num
puts turn_two.display
