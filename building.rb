
class Building
	attr_accessor :address, :style, :has_doorman, :has_elevator, :num_floors, :apartments

	def initialize(address, style, has_doorman, has_elevator, num_floors)
		@address = address
		@style = style
		@has_doorman = has_doorman
		@has_elevator = has_elevator
		@num_floors = num_floors
		@apartments = {}
	end

	def doorman?			#checks if there is anything in there is an doorman
		 @has_doorman.any?
	end

	def elevator?			#checks if there is anything in there is an elevator
		 @has_elevator.any?
	end

	def to_s
		puts "This #{@style.downcase } building at #{@address.upcase } has #{ @num_floors } floors and #{@apartments.length} apartments."
	
		# if @has_doorman.any? && @has_elevator.any?
		# 	puts "It has a doorman and an elevator." ## NEED TO CHANGE
		# elsif @has_doorman.any? && @has_elevator.any?
		# 	puts "It has a doorman but no elevator."
		# elsif @has_doorman.any? && @has_elevator.any?
		# 	puts "It has an elevator but no doorman."
		# else
		# 	puts "It has no doorman or elevator."
		# end
	end

end