require './bikes'
require './obstacles'

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


obstacles = [
  MtTabor,
  EastbankEsplanade,
  BurnsideBridge,
  I205Bridge,
  RockyButte,
  ForestPark
]

chosen_model = [
  Cruiser,
  Commuter,
  CarbonRoadRacer,
  DoubleSuspensionMountainBike
][model]

bike = chosen_model.new

loop do
  obstacle = obstacles[(rand * obstacles.size).floor].new
  puts obstacle.intro_message
  sleep 1
  puts obstacle.ride(bike)
end


