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

# Run Game
game = Board.new
game.show_board