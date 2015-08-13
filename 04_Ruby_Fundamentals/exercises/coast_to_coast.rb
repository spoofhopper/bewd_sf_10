require 'pry'

def talent
  engineer = "Kisha"
  san_francisco(engineer)
  moscow(engineer)
end

def san_francisco(engineer)
  puts "It's warm. #{engineer} is headed to SF!"
end

def moscow(engineer)
  puts "It's too cold. #{engineer} is unavailable"
end

puts san_francisco("Michael Jordan")
