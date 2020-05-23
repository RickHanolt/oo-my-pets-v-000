require 'pry'

class Owner
  attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = "human"
  end

  def say_species
    binding.pry
    puts "I am a #{self.species}."
  end

end
