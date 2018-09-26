class Guest
  attr_reader :name
  @@all = []

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
    self.trips.count
  end

  ####### Class Methods
  def self.all
    @@all
  end

  def self.pro_traveller
    self.all.map do |guest|
      if guest.trip_count > 1
          guest
      end
    end
  end

  def self.find_all_by_name(input_name)
    self.all.select do |guest|
      guest.name == input_name
    end
  end


end ### End of Guest Class
