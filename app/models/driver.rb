class Driver
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def rides
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def riders
    self.rides.map do |ride|
      ride.passenger
    end
  end

  def total_distance
    total = self.rides.map do |ride|
      ride.distance
    end
    total.inject(0){|sum, distance| sum + distance}
  end

##### Class Methods
  def self.all
    @@all
  end

  def self.mileage_cap(distance)
    self.all.select do |driver|
      driver.total_distance > distance
    end
  end

end ###End of Driver Class
