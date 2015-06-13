# Your code goes here!
class Parrot
  attr_accessor :phrase

  def phrase
    @phrase ? @phrase : "Squawk!"
  end

  def speak
    puts "#{phrase}"
  end
end