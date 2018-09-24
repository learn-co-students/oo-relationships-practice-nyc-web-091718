class Project

  attr_accessor :creator, :name, :goal, :amount
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, goal)
    @name = name
    @goal = goal
    @amount = 0.0
  end

end
