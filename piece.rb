
class Piece

  attr_accessor :symbol

  def initialize()
    @symbol = "\u265f"

  end

  def to_s

  end

  def empty

  end

  def symbol
    @symbol
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
