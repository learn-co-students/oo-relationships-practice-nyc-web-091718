class MovieOrShowCharacter
  attr_accessor :character, :movie_or_show

  @@all = []

  def self.all
    @@all
  end

  def initialize(character, movie_or_show)
    @character = character
    @movie_or_show = movie_or_show
    @@all << self
  end
end
