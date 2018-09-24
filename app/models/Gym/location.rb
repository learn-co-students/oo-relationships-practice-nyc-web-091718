class Location
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def self.least_clients
    self.all.map {|location| [location, location.clients.count]}.sort_by {|location_with_clients_array| location_with_clients_array[1]}.first
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def clients
    Client.all.select {|client| client.location == self}
  end

  def trainers
    Trainer.all.select {|trainer| trainer.location == self}
  end

end
