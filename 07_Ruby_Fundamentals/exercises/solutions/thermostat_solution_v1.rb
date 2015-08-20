require 'pry'

class Thermostat

  attr_accessor :temperature

  #instance factory!!!
  def initialize(temperature)
    @temperature = temperature
  end

  #instance method
  def get_desired_temperature(target_temp)
    if @temperature >  target_temp + 5
      turn_off_heater(@temperature)
    elsif @temperature < target_temp
      turn_on_heater(@temperature)
    else
      puts "It's #{@temperature} the perfect temperature"
    end
  end
  ####

  #class method
  def self.detect_temperature(all_temps, target_temp)
    all_temps.each do |temperature|
      @temperature = Thermostat.new(temperature) #use our instance factory to create an instance  of class Thermostat
      @temperature.get_desired_temperature(target_temp) #call that awesome instance method we created
    end
  end

 private

 def turn_on_heater(temperature)
    puts "Brr It's #{temperature}. That's Crazy Cold!  Let me warm you up! "
  end

  def turn_off_heater(temperature)
    puts "Whew! It's #{temperature}. That's Hella Hot! Let me cool you down"
  end

end


#The temperature is being read externally somewhere, so let's just create an array of those readings
#and pass them into our class method Thermostat.detect_temperature(all_temps, target_temp)

#array_to_temperatures
all_temps = [45,65,85,95, 66, 99, 75, 12, 22, 45, 65, 75, 70, 100, 10, 52, 22]

#set by user
target_temp = 75

#class method called to get this party started!!!
Thermostat.detect_temperature(all_temps, target_temp)
