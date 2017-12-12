require_relative 'display'
require_relative 'board'

if __FILE__ == $PROGRAM_NAME
  newboard = Board.new
  d = Display.new(newboard)
  d.render
end
