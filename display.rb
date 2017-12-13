require 'byebug'
require 'colorize'
require_relative 'cursor'
require_relative 'board'


class Display

attr_accessor :cursor

  def initialize(board)
    @cursor = Cursor.new([0,0], board)
    @board = board
  end


  def render
    w_background = false

    @board.grid.each_index do |row_idx|
      w_background ? w_background = false : w_background = true
      @board.grid[row_idx].each_index do |col_idx|
        pos = [row_idx, col_idx]
        if pos == @cursor.cursor_pos
          print " #{@board[pos]} ".colorize(:color => :red, :background => :blue)
          w_background ? w_background = false : w_background = true
        else
          if w_background
            print " #{@board[pos]} ".colorize(:color => :red)
          else
            print " #{@board[pos]} ".colorize(:color => :red, :background => :black)
          end
          w_background ? w_background = false : w_background = true
        end
      end
      puts ""
    end

  end

  def move(new_pos)

  end

end
