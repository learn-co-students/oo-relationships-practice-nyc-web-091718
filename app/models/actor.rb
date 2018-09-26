class Actor
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  #### Class Methods
  def self.all
    @@all
  end

end ### End of Show Class


# #### Actor
# - .most_characters
#   - should return which actor has the most different characters played. (probably meryl streep)
