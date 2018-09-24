# create files for your ruby classes in this directory
class Guest
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def self.pro_traveller
    @@all.select do |guest|
      guest.trips.size > 1
    end
  end

  def self.find_all_by_name(guest_name)
    @@all.select do |guest|
      guest.name == guest_name
    end
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def trips
    Trip.all.select do |trip|
      trip.guest == self
    end
  end

  def listings
    self.trips.map do |trip|
      trip.listing
    end
  end

  def trip_count
    self.trips.size
  end
end #end of Guest class
