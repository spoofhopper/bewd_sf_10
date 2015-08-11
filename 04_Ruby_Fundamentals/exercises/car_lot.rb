#Create 3 or more hashes with cars - include 5 keys
  #- brand, model, year, price, electric
#Create an array of hashes
#Iterate through the array using the `.each` method
#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars and transforms them into an array

require 'pry'

tesla = {brand: "Telsa", model: "Model X", year: 2015, price: 85000, is_electric: true}
ford = {brand: "Ford", model: "Fusion", year: 2014, price: 35000, is_electric: true}
toyota = {brand: "Toyota", model: "Prius", year: 2012, price: 35000, is_electric: true}
chevrolet = {brand: "Chevrolet", model: "Corvette", year: 2015, price: 75000, is_electric: false}
dodge = {brand: "Dodge", model: "Charger", year: 1960, price: 25000, is_electric: false}

#cars = Array.new

#cars.push(tesla, ford, toyota, chevrolet, dodge)

def show_all_cars(cars)
  cars.each do |car|
    puts "This is a #{car[:brand]}"
    puts "This #{car[:brand]} #{car[:model]} is environmentally friendly" if car[:is_electric] == true
    puts "This #{car[:brand]} #{car[:model]} isn't that environmentally friendly" if car[:is_electric] == false
    #binding.pry
  end
end

#write a method that accepts an unlimited number of cars (or arguments)
def add_cars(*all_cars)
  #splat!
  #binding.pry
  all_cars
end

cars = add_cars(tesla, ford, toyota, chevrolet, dodge)

show_all_cars(cars)
