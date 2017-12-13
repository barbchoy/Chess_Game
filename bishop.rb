require_relative 'piece'
require_relative 'sliding_piece'

class Bishop < Piece

  include SlidingPiece

  def initialize
    @symbol = '♗'
  end

  def move_dirs
    diagonal_dirs
  end


end
