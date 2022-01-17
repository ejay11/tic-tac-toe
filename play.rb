# Creates Board
class Game
  attr_accessor :row_zero, :row_one, :row_two, :row_three

  def initialize
    @row_zero = [' ', '|', '1', '|', '2', '|', '3', '|']
    @row_one = ['1', '|', ' ', '|', ' ', '|', ' ', '|']
    @row_two = ['2', '|', ' ', '|', ' ', '|', ' ', '|']
    @row_three = ['3', '|', ' ', '|', ' ', '|', ' ', '|']
    @turn = 1
    puts '--Time to play Tic-Tac-Toe!--'
    puts 'Here is your board:'
    show_board
  end

  # Puts Board to Terimal
  def show_board
    puts @row_zero.join(' ')
    puts @row_one.join(' ')
    puts @row_two.join(' ')
    puts @row_three.join(' ')
  end

  def calculate_array(array_num)
    case array_num
    when 1
      @row_one
    when 2
      @row_two
    when 3
      @row_three
    else
      puts 'Please enter a number for your row, 1-3'
    end
  end

  def calculate_column(space_num)
    column_space = 0
    case space_num
    when 1
      column_space = 2
    when 2
      column_space = 4
    when 3
      column_space = 6
    else
      puts 'Invalid row piece location, please enter 1, 2, or 3'
    end
    column_space
  end

  # Calculate if Winner Method Needed Here

  # Is there a way to iterrate through the board's arrays using "check_array_row here?"

  def check_row_one(_board)
    return true if @row_one[2] != ' ' && @row_one[2] == @row_one[4] && @row_one[4] == @row_one[6]
  end

  def check_row_two(_board)
    return true if @row_two[2] != ' ' && @row_two[2] == @row_two[4] && @row_two[4] == @row_two[6]
  end

  def check_row_three(_board)
    return true if @row_three[2] != ' ' && @row_three[2] == @row_three[4] && @row_three[4] == @row_three[6]
  end

  # Runs all three methods, if any are true, return winning statement, otherwise continue

  def find_winner(board)
    if check_row_one(board) || check_row_two(board) || check_row_three(board)
      puts 'Congratulations! We have a winner!'
    else
      puts 'Next turn!'
    end
  end

  def play(marker, row_num, column_num)
    puts "Turn #{@turn}, putting #{marker} on row #{row_num} and column #{column_num}"
    calculate_array(row_num).insert(calculate_column(column_num), marker)
    calculate_array(row_num).delete_at(calculate_column(column_num) + 1)
    check_board = show_board
    puts check_board.class
    find_winner(check_board)
    show_board
    @turn += 1
  end
end

# Creates instance of Board class
lets_start = Game.new
lets_start.play('O', 2, 1)
lets_start.play('O', 2, 2)
lets_start.play('O', 2, 3)
