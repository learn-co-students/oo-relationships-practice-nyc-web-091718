class Listing
  @@all = []

  attr_accessor :city

  def self.all
    @@all
  end

  def self.find_all_by_city(city_name)
    self.all.select {|listing| list.city == city_name}
  end

  def self.most_popular
    self.all.map {|listing| [listing, listing.trip_count]}.sort_by {|listing_and_count| listing_and_count[1]}.last.first
  end

  def initialize(location)
    @location = location
    @@all << self
  end

  def guests
    Trip.all.select {|trip| trip.listing == self}.map {|trip| trip.guest}.uniq
  end

  def trips
    Trip.all.select {|trip| trip.listing == self}
  end

  def trip_count
    self.trips.count
  end

end
