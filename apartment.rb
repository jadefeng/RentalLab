class Apartment 
	attr_accessor :name, :price, :sqft, :num_bathrooms, :num_bedrooms, :tenants

	def initialize(name, sqft, num_bathrooms, num_bedrooms) 	# price and tenants will depend on market conditions 
		@name = name
		@price = 0 			# Will change later
		@sqft = sqft
		@num_bathrooms = num_bathrooms
		@num_bedrooms = num_bedrooms
		@tenants = []		# Will add tenants later, leave empty for now
	end

	def occupied?			#checks if there is anything in there using [array].any?
		 @tenants.any?
	end

	def to_s
		puts "Apartment #{name} is #{sqft} square feet and has #{tenants.length} occupants."
		puts "It has #{num_bedrooms} bedrooms and #{num_bathrooms} bathrooms."
		# puts "The price is $#{price} per month."
end
end
