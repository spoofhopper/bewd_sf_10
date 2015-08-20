require 'pry'
require 'pry-byebug'

class Robot
  #creates getter && setter methods for each attribute
  attr_accessor :name, :type, :origin
  def initialize(name,type, origin)
    @name = name
    @type = type
    @origin = origin
  end

  #class methods can be called outside of the class like Robot.make_robots(number)
  def self.make_robots(number)
    robots = number.to_i
    robots.times do
      Robot.random_robot_maker
    end
  end

  def self.random_robot_maker
    names = ["Tanya", "Tatyana", "Beyonce", "Rihanna", "Lupita"]
    origins = ["Nairobi", "Brooklyn", "Oakland", "Chicago", "San Francisco"]
    types = ["Android", 'Super-Android']

    name = names.sample
    origin = origins.sample
    type = types.sample

    robot = Robot.new(name, type, origin)
    puts "Hello, I am #{name} of type #{type}. I was produced in #{origin}.\n"
    puts "**#{robot.flying_skills}. #{robot.empathy}. #{robot.laser_fighting_skills}.**"
    puts "-----\n"
  end

  #instance methods can only be called by instances of a class
  def empathy
    "I was designed to be empathetic" if origin == "Nairobi"
  end

  #this is an instance method
  def flying_skills
    if type == "Super-Android"
      "I can fly!"
    else
      "I can not fly {crying}"
    end
  end

  def laser_fighting_skills
    "I have laser fighting skills" unless type != "Android"
  end
end

Robot.make_robots(50)
