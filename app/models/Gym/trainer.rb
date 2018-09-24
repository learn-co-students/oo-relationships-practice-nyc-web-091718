class Trainer
  attr_accessor :location, :name

  @@all = []

  def self.all
    @@all
  end

  def self.most_clients
    self.all.map {|trainer| [trainer, trainer.clients.count]}.sort_by {|trainer_and_clients_count| trainer_and_clients_count[1]}.last

  end

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def clients
    Client.all.select {|client| client.trainer == self}
  end

end
