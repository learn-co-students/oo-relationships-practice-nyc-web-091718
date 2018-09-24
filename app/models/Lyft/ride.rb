class Ride
  attr_accessor :mileage, :driver, :passenger

  @@all = []

  def initialize(passenger, driver, mileage)
    @passenger = passenger
    @driver = driver
    @mileage = mileage
    @@all << self
  end

  def average_distance
    self.all.map {|ride| ride.mileage}.reduce(:+)
  end

end
