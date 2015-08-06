#array_work

rock_stars = ["jack white","Shakey Graves","Metallica","Kanye West","Taylor Swift"]

puts rock_stars

#print out the first item in the array
puts "#{rock_stars[0]} is the first rock star in the #{rock_stars.class}"

#printout the last item in the array
puts "#{rock_stars[-1]} is the last rock star in the #{rock_stars.class}"

#add a new rock star
rock_stars << "Disclosure"

puts "new element added: #{rock_stars[-1]}"

#add a few more rock stars
rock_stars.push("Broken Bones","Decemberists")

puts rock_stars

rock_stars << "Disclosure"

puts rock_stars[-1]

puts rock_stars.include?("Disclosure")

rock_stars.pop

puts rock_stars

rock_stars.push("Disclosure","Disclosure","Disclosure")

puts rock_stars

rock_stars.uniq!

puts "blablablablablafdbgdhdgfhhgst--------"

puts rock_stars


rock_stars.unshift("beginning!")

puts rock_stars

rock_stars.unshift("and yet another beginning")

puts rock_stars

rock_stars.shift

puts rock_stars

puts rock_stars.size
