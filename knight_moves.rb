require_relative "gameboard.rb"
require_relative "knight.rb"

def knight_moves
end

gameboard = Gameboard.new
gameboard.display
gameboard.add_knight([6,5])
gameboard.display
puts gameboard.knight.possible_moves.inspect
