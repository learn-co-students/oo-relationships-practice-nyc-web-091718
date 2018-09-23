class Listing
  attr_accessor :city

  @@all = []
  def self.all
    @@all
  end

  def self.find_all_by_city(city_name)
    @@all.select do |listing|
      listing.city == city_name
    end
  end

  def self.most_popular
    max_pop = 0
    pop_list = nil
    @@all.each do |list|
       if list.trips.size > max_pop
         max_pop = list.trips.size
         pop_list = list
       end
    end
    pop_list
  end

  def initialize(city)
    @city = city
    @@all << self
  end

  def guests
    self.trips.map do |trip|
      trip.guest
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def trip_count
    self.trips.size
  end
end #end of Listing class
