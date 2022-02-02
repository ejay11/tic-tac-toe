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

  def piece_placement
    puts 'Let\'s begin! Are you putting down and X or an O?'
    piece = gets.chomp.to_s
    puts "OK, a #{piece}. What column would you like to put it: 1, 2, or 3?"
    column = gets.chomp
    puts "OK, column #{column}. And now, what row? 1, 2, or 3?"
    row = gets.chomp
    puts "Ah, row #{row}. Excellent choice."
    [piece, column, row]
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
    column_space = space_num + space_num
    puts column_space
  end

  # Methods for checking different areas of board

  def check_row_one(_board)
    return true if @row_one[2] != ' ' && @row_one[2] == @row_one[4] && @row_one[4] == @row_one[6]
  end

  def check_row_two(_board)
    return true if @row_two[2] != ' ' && @row_two[2] == @row_two[4] && @row_two[4] == @row_two[6]
  end

  def check_row_three(_board)
    return true if @row_three[2] != ' ' && @row_three[2] == @row_three[4] && @row_three[4] == @row_three[6]
  end

  def check_columns(_board)
    array_space = 2
    while array_space <= 6
      return true if @row_one[2] != ' ' && @row_one[2] == @row_two[2] && @row_two[2] == row_three[2]

      array_space += 2
    end
  end

  def check_diagonal_top_down(_board)
    return true if @row_one[2] != ' ' && @row_one[2] == @row_two[4] && @row_two[4] == row_three[6]
  end

  def check_diagnoal_down_up(_board)
    return true if @row_one[6] != ' ' && @row_one[6] == @row_two[4] && @row_two[2] == row_three[6]
  end

  # Runs methods to check for any winners, if any are true, return winning statement, otherwise continue

  def find_winner(board)
    if check_row_one(board) || check_row_two(board) || check_row_three(board) || check_columns(board) || check_diagonal_top_down(board) || check_diagnoal_down_up(board)
      puts 'Congratulations! We have a winner!'
    else
      puts 'Next turn!'
      show_board
    end
  end

  def play
    piece = piece_placement
    puts piece
    board_array = piece[2].to_i
    board_row = piece[1].to_i
    print calculate_array(board_array)
    puts calculate_column(board_row)
    calculate_array(board_array).insert(calculate_column(board_row), piece[0])
    calculate_array(board_array).delete_at(calculate_column(board_row) + 1)
    check_board = show_board
    find_winner(check_board)
  end
end

# Creates instance of Board class
game = Game.new
game.play
