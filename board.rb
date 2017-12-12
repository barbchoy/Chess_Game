require_relative 'piece'

class Board
  attr_accessor :grid

  def initialize(grid = make_starting_grid)
    @grid = grid
  end

  def [](pos)
    @grid[pos[0]][pos[1]]
  end

  def []=(pos, piece)
    @grid[pos[0]][pos[1]] = piece
  end

  def dup
  end

  def move_piece(color,from_pos, to_pos)
  end

  def move_piece!(from_pos, to_pos)
    self[to_pos] = self[from_pos]
    self[from_pos] = nil
  end

  def checkmate?
  end

  protected

  def make_starting_grid(size = 8)
    grid = Array.new(size) { Array.new(size){nil} }

    grid[0].map!{ |space| space = Piece.new}
    grid[1].map!{ |space| space = Piece.new}
    grid[6].map!{ |space| space = Piece.new}
    grid[7].map!{ |space| space = Piece.new}
    grid
  end

  def find_king(color)
  end

end
