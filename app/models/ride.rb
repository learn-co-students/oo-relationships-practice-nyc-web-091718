class Ride
  attr_accessor :driver, :passenger, :distance
  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance.to_f

    @@all << self
  end

  #### Class Methods
  def self.all
    @@all
  end

  def self.average_distance
    miles = all.map do |ride|
      ride.distance
    end
    (miles.inject(0){|sum,miles| sum + miles})/ @@all.length
  end

end ### End of Ride Class
