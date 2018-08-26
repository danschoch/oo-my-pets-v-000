class Owner
  attr_accessor :owner
  attr_reader :species
  @@all = []

  def initialize(owner)
    @owner = owner
    @species = species
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
end
