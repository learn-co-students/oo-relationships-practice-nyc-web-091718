class Show
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def characters
    Character.all.select do |character|
      character.show == self
    end
  end

  def all_movies
    Character.all.select do |character|
      character.movie != nil
    end
  end

  def on_the_big_screen
    self.all_movies.map do |movie|
      movie.name
      end
  end

  #### Class Methods
  def self.all
    @@all
  end

end ### End of Show Class


# #### Show
# - #on_the_big_screen
#   - should return TV shows that share the same name as a movie
