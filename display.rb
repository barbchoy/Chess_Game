require 'colorize'
require_relative 'cursor'
require_relative 'board'


class Display

  PIECES = {
    :p => 'P',
    :n => 'n'
  }

  def initialize(board)
    @cursor = Cursor.new([0,0], board)
    @board = board
  end

  def move(new_pos)

  end

  def render
    # @board.grid.each do |row|
    #   row.each do |space|
    #     print " #{PIECES[space.symbol]} "
    #   end
    #   puts ""
    # end
    pc = @board[[3,4]]
    p pc.symbol
    p PIECES[pc.symbol]
  end

end
