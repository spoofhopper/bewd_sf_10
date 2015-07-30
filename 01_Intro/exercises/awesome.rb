require 'pry'

def awesome_number(number)


  if number % 3 == 0 && number % 5 == 0
    puts "AWESOME"
  elsif number % 3 == 0
    puts "AWE"
  elsif number % 5 == 0
    puts "SOME"
  else
    puts "This number is #{number}, it is not completely awesome."
  end

end



  def awesome_seeker(top_num)
    1.upto(top_num) do |number|
      ## for each member of the array, call number and do whatever is in the block passing in the number, which is called number
      puts "This is the number #{number}"

      awesome_number(number)
    end

  end


awesome_seeker(100)
