
class Piece

  attr_accessor :symbol

  def initialize(position, board)
    @symbol = "♟"
    @position = nil # [1, 2]
    @board = board
  end

  def moves()
    moves = []
    

  end

  def to_s
    @symbol
  end

  def empty

  end

  def valid_moves

  end

  private

  def move_into_check(to_pos)

  end

end

if __FILE__ == $PROGRAM_NAME
  pc = Piece.new
  p "#{pc.symbol}"
end
