require 'pry'


def get_love_interest
  puts "What's your interest's name?"
  love_interest = gets.strip
  puts "Your love interest is #{love_interest.capitalize}"
  capture_love_interest_response(love_interest)
end

def capture_love_interest_response(love_interest)
  puts "Do you think about #{love_interest}?\n"
  puts "Answer 'Yes' or 'No' \n"
  user_answer = gets.strip.downcase
  #binding.pry
  get_valid_answer(user_answer, love_interest)
end

def get_valid_answer(user_answer, love_interest)
  #binding.pry
  case user_answer
  when user_answer = "yes"
      puts "Call #{love_interest}!"
    when user_answer = "no"
      puts "Maybe call #{love_interest} later."
    else
      puts "I didn't understand your answer, sorry! \n"
      puts "Please just answer Yes or No next time"
      capture_love_interest_response(love_interest)
  end
end

### This is where we call methods to run our script
get_love_interest
