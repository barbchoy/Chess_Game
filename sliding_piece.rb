require_relative 'piece'

module SlidingPiece

  def moves(move_dirs)
    moves = []

    move_dirs.each do |direction|
      next_move = @postion
      while @board.in_bounds(next_move)
        moves << next_move
        next_move = moves.last + direction
      end
    end

    moves
  end

private

  def horizontal_dirs
    [[1, 0], [0, 1], [-1, 0], [0, -1]]
  end

  def diagonal_dirs
    [[-1, -1], [1, 1], [-1, 1], [1, -1]]
  end
end


# left: [0, -1],
# right: [0, 1],
# up: [-1, 0],
# down: [1, 0]
