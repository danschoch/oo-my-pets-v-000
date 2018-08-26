class Owner
  attr_accessor :owner, :name, :pets
  attr_reader :species
  @@all = []

  def initialize(owner)
    @owner = owner
    @species = "human"
    @@all << self
  end

  #Class methods
  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  #Instance methods
  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets = {fishes: [], dogs: [], cats:[]}
  end

  def buy_fish(fish_name)
    self.pets.each do |pet_type, pet|
      pet << fish_name if pet_type == :fishes
    end
  end

end
