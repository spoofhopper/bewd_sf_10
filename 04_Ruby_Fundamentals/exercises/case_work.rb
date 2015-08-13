require 'pry'

def the_case(grade)
  case grade.downcase
    when "a"
      "You aced the class"
    when "b"
      "Solid Job!"
    when "c", "d"
      "Sometimes a hard C/D leads to graduation!"
    else
      "Stop drinking in my class"
    end
end

puts the_case("c")
