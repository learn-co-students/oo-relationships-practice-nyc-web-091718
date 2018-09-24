class Guest
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def make_trip(listing)
    new_trip = Trip.new(listing, self)
  end

end
