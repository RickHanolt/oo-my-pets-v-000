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
      if cat.owner == self
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

  def buy_cat(for_sale_cat)
    Cat.new(for_sale_cat, self)
  end

  def buy_dog(for_sale_dog)
    Dog.new(for_sale_dog, self)
  end

  def walk_dogs
    self.dogs.each {|a_dog| a_dog.mood = "Happy"}
  end

end
