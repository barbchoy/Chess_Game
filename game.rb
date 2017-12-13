require_relative 'display'
require_relative 'board'
# require_relative 'player'

class Game

  def initialize
    @board = Board.new
    @display = Display.new(@board)
  end

  def play
    while true

      piece, move = nil, nil
      until piece
        system "clear"
        @display.render
        piece = @display.cursor.get_input
      end
      puts "this is the piece position: #{piece}"
      sleep(2)

      until move
        system "clear"
        @display.render
        move = @display.cursor.get_input
      end
      puts "this is the move: #{move}"

      sleep(2)
    end
  end

end


if __FILE__ == $PROGRAM_NAME
  game = Game.new
  game.play
end
