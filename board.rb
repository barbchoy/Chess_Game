require_relative 'piece'
require_relative 'nullpiece'

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

  def in_bounds(pos)
    return false if pos[0] > 7 || pos[0] < 0
    return false if pos[1] > 7 || pos[1] < 0
    true
  end

  def move_piece(color, from_pos, to_pos)
  end

  def move_piece!(from_pos, to_pos)

    if self[from_pos] == nil
      raise ArgumentError.new "empty from position"
    end

    self[to_pos] = self[from_pos]
    self[from_pos] = nil
  end

  def checkmate?
  end

  protected

  def make_starting_grid(size = 8)
    grid = Array.new(size) { Array.new(size){ Null_Piece.new } }

    grid[0].map!.with_index{ |space, idx| space = Piece.new([0, idx], self) }
    grid[1].map!.with_index{ |space, idx| space = Piece.new([1, idx], self) }

    grid[6].map!.with_index{ |space, idx| space = Piece.new([6, idx], self) }
    grid[7].map!.with_index{ |space, idx| space = Piece.new([7, idx], self) }
    grid
  end

  def find_king(color)
  end

end
