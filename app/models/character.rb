class Character
  attr_reader :movie
  attr_accessor :actor, :show, :movie
  @@all = []

  def initialize(name, actor, show = nil, movie = nil)
    @name = name
    @actor = actor
    @show = show
    @movie = movie


    @@all << self
  end

  #### Class Methods
  def self.all
    @@all
  end
end ### End of Show Class

# #### Character
# - #most_appearances
#   - should return which character of film/television appears in the most films or tv shows
