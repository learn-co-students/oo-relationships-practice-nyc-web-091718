class Client
  attr_accessor :name, :location, :trainer

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def assign_trainer(trainer)
    self.trainer = trainer
  end



end
