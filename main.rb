system('clear')

puts "Hello World"

require_relative './tenant.rb'					#Go into the file directory and link to the Tenant.rb file
require_relative './apartment.rb'
require_relative './building.rb'

#######################################################
# START ASKING QUESTIONS

# Globals to store our data
$buildings = [] 		# Need to have a global array 
$apartment = []
$tenants = []

#######################################################

# Tenant 
chris = Tenant.new('Chris Eccleston', 23, 'male')

# Apartment
apt = Apartment.new("25b", 100, 1, 3)

# Building
building = Building.new('123 Fake St', 'neo-industrial', true, false, 1000)

#######################################################

#Seed data -- only for the testing stage.
$buildings.push building 
$buildings.first.apartments[apt.name] = apt
$buildings.first.apartments[apt.name].tenants << chris


#######################################################

def menu
	puts "What would you like to do?"
	puts "1. List all avaliable buildings."
	puts "2. List all avaliable apartments."
	puts "3. List all tenants on the system."
	puts "4. Add a new building."
	puts "5. Add a new apartment."
	puts "6. Add a new tenant to the system."
	puts "q. Quit"
end 

def read_selection
	menu
	gets.chomp.downcase
end

menu_option = read_selection

#######################################################

# List all buildings 
def list_buildings

end


#######################################################

until menu_option == 'q'
	case menu_option
	when '1' 	#List all avaliable buildings
		$buildings.each do |b|
			puts b
			puts b.to_s2
		end		
		menu_option = read_selection

	when '2'	# List all apartments 
		$buildings.each do |b|
			b.apartments.each do |number, apartment|
				puts apartment 
			end
		end
		menu_option = read_selection
	
	when '3' 	# List all tenants on the system
		$tenants.each do [t]
			puts t
		end
		menu_option = read_selection
		
	when '4' 	# Add a new building
		puts "What is the address?"
		@address_n = gets.chomp

		puts "What is the style?"
		@style_n = gets.chomp

		puts "Is there a doorman? (Y/N)"
		@doorman = gets.chomp.downcase
		@doorman_n = @doorman == "y"
			

		puts "Is there an elevator? (Y/N)"
		@elevator = gets.chomp.downcase
		@elevator_n = @elevator == "y" 


		puts "How many floors are there?"
		@floors_n = gets.chomp

		building = Building.new(@address_n, @style_n, @doorman_n, @elevator_n, @floors_n)
		
		$buildings.push building 		# Push new addition onto the building array

		puts "This is the new buildings list."
		$buildings.each do |b|			# The new list of buildings
			puts b
			puts b.to_s2
		end		

		menu_option = read_selection



	when '5' 	# Add a new apartment
		menu_option = read_selection


	when '6' 	# Add a new tenant to the system (later add them to a building)
		menu_option = read_selection
	
	else 
		puts "Sorry. That was not an option."	
		menu_option = read_selection

	end
end

puts "You just quit the system! Bye!"




##########################################################################################



# require 'pry'
# binding.pry

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
