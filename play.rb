# Creates Board
class Game
  attr_accessor :row_zero, :row_one, :row_two, :row_three

  def initialize
    @row_zero = [' ', '|', '1', '|', '2', '|', '3', '|']
    @row_one = ['1', '|', ' ', '|', ' ', '|', ' ', '|']
    @row_two = ['2', '|', ' ', '|', ' ', '|', ' ', '|']
    @row_three = ['3', '|', ' ', '|', ' ', '|', ' ', '|']
  end

  # Puts Board to Terimal
  def show_board
    puts @row_zero.join(' ')
    puts @row_one.join(' ')
    puts @row_two.join(' ')
    puts @row_three.join(' ')
  end

  def calculate_array(array_num)
    if array_num == 1
      @row_one
    elsif array_num == 2
      @row_two
    else
      @row_three
    end
  end

  def calculate_column(space_num)
    column_space = 0
    if space_num == 1
      column_space = 2
    elsif space_num == 2
      column_space = 4
    elsif space_num == 3
      column_space = 6
    else
      puts 'Invalid row piece location, please enter 1, 2, or 3'
    end
    column_space
  end

  def play(marker, row_num, column_num)
    puts "The column number is #{calculate_column(column_num)}"
    puts "The array you'll need is #{calculate_array(row_num)}"
    puts "The marker is #{marker}"
    show_board
    calculate_array(row_num).insert(calculate_column(column_num), marker)
    calculate_array(row_num).delete_at(calculate_column(column_num)+1)
    show_board
  end
end


# Creates instance of Board class
lets_start = Game.new
lets_start.play('O', 2, 1)

