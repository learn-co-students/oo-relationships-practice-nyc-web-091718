class Listing
  attr_reader :city
  @@all = []

  def initialize(city)
    @city = city

    @@all << self
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def guests
    self.trips.map do |trip|
      trip.guest
    end
  end

  def trip_count
    self.trips.count
  end

#### Class Methods
  def self.all
    @@all
  end

  def self.find_all_by_city(city)
    self.all.select do |listing|
      listing.city == city
    end
  end

  def self.most_popular
    popular = {}
    self.all.each do |listing|
        popular[listing] = listing.trip_count
    end
    popular.max_by {|city, count| count}
  end


end ### End of Listing Class


# - .most_popular
#   - finds the listing that has had the most trips
