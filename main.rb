system('clear')

puts "Hello World"

require_relative './tenant.rb'					#Go into the file directory and link to the Tenant.rb file
require_relative './apartment.rb'
require_relative './building.rb'

# Tenant 
chris = Tenant.new('Chris Eccleston', 23, 'male')
puts chris

# Apartment
apt = Apartment.new("25b", 100, 1, 15)
puts apt

# Building
building = Building.new('123 Fake St', 'neo-industrial', true, false, 1000)
puts building

# Globals to store our data
$buildings = [] 		# Need to have a global array 
$apartment = []
$tenants = []



##########################################################################################

#Seed data -- only for the testing stage.
$buildings.push building 
$buildings.first.apartments[apt.name] = apt
$buildings.first.apartments[apt.name].tenants << chris
puts building

require 'pry'
binding.pry

###
# # building.apartments is a hash
# # push the apartment into the building hash
# building.apartments[apt.name] = apt
# building.apartments["25b"].tenants << chris
# building.apartments["25b"].tenants.first.age		# It is 23
# building.apartments["25b"].tenants.first.age += 1 	# Changing Chris' age to 24
# building.apartments["25b"].tenants.first.name = "Christina" 	# Changing Chris' name to Christina

# tim = Tenant.new('Tim', 33, 'male')				# Someone new
# building.apartments["25b"].tenants << tim 		# Put tim into his own apartment
# building.apartments["25b"].occupied?			# Do people live in 25B?
# building.apartments["25b"].tenants.length		# How many tenants?
# building.apartments["25b"].tenants 				# Who are the tenants?
