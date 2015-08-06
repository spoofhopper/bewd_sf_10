#150805 reverse it in-class exercise

require 'pry'

#method to get the word
def my_reverse(string)
  #puts "This is my word: #{string}"
  characters = string.downcase.chars #turn string into an array
  new_word = "" #define output variable


  until characters.length == 0 #pop of the last character onto  word until string is gone
    #puts "#{characters.pop}"
    new_word << characters.pop #pop character onto word
  end
  new_word.capitalize #capitalize the word
  #return word #this is not explicity required by ruby
end


def is_palindrome?(word)
  if word.downcase.strip == my_reverse(word).downcase
    "W00t! #{word} is a palindrome!"
  else
    "Not a palindrome :-("
  end
end


puts "Give me a word"
word = gets.strip

puts is_palindrome?(word) #call our method here
