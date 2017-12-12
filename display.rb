require 'byebug'
require 'colorize'
require_relative 'cursor'
require_relative 'board'


class Display


  def initialize(board = Board.new)
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

    @board.grid.each do |row|
      row.each do |space|
        print " #{space.symbol} "
      end
      puts ""
    end

  end

end

if __FILE__ == $PROGRAM_NAME
  dis = Display.new

  dis.render

end
