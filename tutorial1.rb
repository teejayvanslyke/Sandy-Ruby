puts "Welcome to PDXYCLE!"
puts "Enter your name:"
name = gets

puts "Hello, #{name}!"

puts "Choose your mode of transport:"
puts "[0] Cruiser"
puts "[1] Commuter"
puts "[2] Carbon Road Racer"
puts "[3] Double Suspension Mountain Bike"
model = gets.to_i


class Bike 
end

class Cruiser < Bike
end

class Commuter < Bike
end

class CarbonRoadRacer < Bike
end

class DoubleSuspensionMountainBike < Bike
end

chosen_model = [
  Cruiser,
  Commuter,
  CarbonRoadRacer,
  DoubleSuspensionMountainBike
][model]

bike = chosen_model.new

puts "You're about to climb Mt Tabor..."
distance_up_mount_tabor = 2.0 #miles
time_to_travel = bike.speed 
sleep bike.time_to_travel(distance_up_mount_tabor)

puts "... You made it in #{bike.time_to_travel(distance_up_mount_tabor)} seconds!"

