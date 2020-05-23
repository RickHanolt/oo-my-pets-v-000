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
    Cat.all.detect{|a_cat| a_cat.name == for_sale_cat}.owner = self
    self.cats
    binding.pry
  end
end
