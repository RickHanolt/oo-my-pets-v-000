require 'pry'

class Owner
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.select do |cat|
      if cat.owner.name == self.name
        cat
      end
    end
  end

  def dogs
    Dog.all.select do |dog|
      if dog.owner == self
        dog
      end
    end
  end
end
