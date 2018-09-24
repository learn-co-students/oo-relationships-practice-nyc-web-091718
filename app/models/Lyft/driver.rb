class Driver

  @@all = []

  def self.mileage_cap(distance)
    self.all.select {|driver| driver.total_distance > distance}
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def passengers
    self.rides.map {|ride| ride.passenger}.uniq
  end

  def rides
    Ride.all.select {|ride| ride.driver == self}
  end

  def total_distance
    self.rides.map {|ride| ride.mileage}.reduce(:+)
  end



end
