require 'pry'




# use iteration to perform an action on each item in an array (or hash)
def the_bee_rockstars
  rock_stars = ["Beyonce", "Rihanna", "Drake", "Bob Marley"]
  rock_stars.each do |rock_star|  #name the element a pseudoname while you're iterating through
    puts "#{rock_star}" if rock_star.start_with?("B")
  end
end


def the_five_letter_cars
  cars = ["Tesla", "Ford", "Mercedes", "Toyota"]
  #cars.each do |car|
    #puts "#{car}" if car.length == 5
  cars.each { |car| puts car if car.length >= 5}
  #end
end

#call the method
the_bee_rockstars

the_five_letter_cars
