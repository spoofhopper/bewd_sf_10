#Create 3 or more hashes with cars - include 5 keys
  #- brand, model, year, price, electric
#Create an array of hashes
#Iterate through the array using the `.each` method
#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars and transforms them into an array

require 'pry'

def show_all_cars(cars)
  cars.each do |car|
    puts "This is a #{car[:brand]}"
    puts "** #{car[:brand]} is environmentally friendly. **" if car[:electric] == true
  end
end

#write a method that accepts an unlimited number of cars (or arguments)
def add_cars()
end

tesla = {brand: "Tesla", model: "Model X", year: "2016", price: "80000", electric: true}
ford = {brand: "Ford", model: "Escape", year: "2015", price: "17000", electric: false }
porshe = {brand: "Porshe", model: "Speedter", year: "1955", price: "250000", electric: false }

cars = []
cars.push(tesla,ford,porshe)
show_all_cars(cars)
