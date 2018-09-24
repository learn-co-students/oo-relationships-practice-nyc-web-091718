class Passenger

  @@all = []

  def self.premium_members
    self.all.select {|passenger| passenger.total_distance >= 100}
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def drivers
    self.rides.map {|ride| ride.driver}
  end

  def rides
    Ride.all.select {|ride| ride.passenger == self}
  end

  def total_distance
    self.rides.map {|ride| ride.mileage}.reduce(:+)
  end



end
