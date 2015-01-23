class Rover
	attr_accessor :x, :y, :direction 

	def initialize(x, y, direction)
		@x = x.to_i 
		@y = y.to_i
		@direction = direction.upcase	
	end

	def to_s
	 	"Location: #{@x}, #{@y}, #{@direction}"
	end

	def read_instruction(instructions)
		instructions.upcase.split("").each do |l|
			if l == "M"
				move
			elsif  l == "L" || l == "R"
				turn(l)
			end
			puts self
		end 
	end	

	def turn(t)
		if t == "L"
			if @direction == "N"
				@direction = "W"
			elsif @direction == "W"
				@direction = "S"
			elsif @direction == "E"
				@direction = "N"
			elsif @direction == "S"
				@direction = "E"
			else 
				raise "Bad direction"
			end
		elsif t == "R"
			if @direction == "N"
				@direction = "E"
			elsif @direction == "W"
				@direction = "N"
			elsif @direction == "E"
				@direction = "S"
			elsif @direction == "S"
				@direction = "W"
			else 
				raise "Bad direction"
			end
		end
	end

	def move
		if @direction == "N"
			@y += 1
		elsif @direction == "W"
			@x -= 1
		elsif @direction == "E"
			@x += 1
		elsif @direction == "S"
			@y -= 1	
		end
	end
	
end

puts "Input your initial location (eg: '5 5 E'):"
#rover_location is variable that will intake location value
initial_x, initial_y, initial_direction = gets.chomp.split(" ")

puts "Input instructions"
#rover_direction will store the instructions that the user will give to the rover
rover_instruction = gets.chomp

rover1 = Rover.new(initial_x, initial_y, initial_direction)
rover1.read_instruction(rover_instruction)
puts rover1

#rover2 = Rover.new(5, 5, "N")
#rover2.read_instruction("MLMRLMRLMRLMMLR")






