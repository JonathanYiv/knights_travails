require_relative "gameboard.rb"
require_relative "knight.rb"

def knight_moves(gameboard, start, finish)
	# given the finishing space, it calculates all possible moves, and then assigns each space a distance = 1
	# then, given the new spaces at distance = 1, it calculates all the possible moves for any unvisited space and assigns those spaces a distance = 2
	# it continues, but once it reaches the starting space, it stops, and then the knight is moved to the possible spaces that have the smallest distance
	solution = []
	solution << start

	distance_info = Array.new(8) { Array.new(8) { { distance: nil, parent: nil } } }
	distance_info[finish[0]][finish[1]][:distance] = 0

	end_knight = Knight.new(finish)
	queue = []
	queue << end_knight

	solutionFound = false

	until solutionFound
		position = queue.shift
		distance = 1
		
		position.possible_moves.each do |move|
			if move == start
				solutionFound = true
			end

			if distance_info[move[0]][move[1]][:distance] == nil
				distance_info[move[0]][move[1]][:distance] = distance_info[position.x_position][position.y_position][:distance] + 1
				distance_info[move[0]][move[1]][:parent] = position
				queue << Knight.new(move)
			end
		end
	end

	start_knight = Knight.new(start)

	smallest_distance = 63
	shortest_path = nil
	until shortest_path == finish
		start_knight.possible_moves.each do |move|
			if distance_info[move[0]][move[1]][:distance] != nil && distance_info[move[0]][move[1]][:distance] < smallest_distance
				smallest_distance = distance_info[move[0]][move[1]][:distance]
				shortest_path = move
			end
		end
		solution << shortest_path
		start_knight = Knight.new(shortest_path)
	end

	puts "The shortest path from #{start} to #{finish} is #{solution.inspect}."
	print "\nThe Knight starts at #{start}.\n\n"

	gameboard.add_knight(solution.shift)
	gameboard.display
	solution.each_with_index do |move, index| 
		gameboard.move_knight(move)
		print "\nThen it moves to #{solution[index]}.\n\n"
		gameboard.display
	end
end

gameboard = Gameboard.new
knight_moves(gameboard, [0,0], [7,7])

=begin
Chess Board
0,0 0,1 0,2 0,3 0,4 0,5 0,6 0,7
1,0 1,1 1,2 1,3 1,4 1,5 1,6 1,7
2,0 2,1 2,2 2,3 2,4 2,5 2,6 2,7
3,0 3,1 3,2 3,3 3,4 3,5 3,6 3,7
4,0 4,1 4,2 4,3 4,4 4,5 4,6 4,7
5,0 5,1 5,2 5,3 5,4 5,5 5,6 5,7
6,0 6,1 6,2 6,3 6,4 6,5 6,6 6,7
7,0 7,1 7,2 7,3 7,4 7,5 7,6 7,7
=end