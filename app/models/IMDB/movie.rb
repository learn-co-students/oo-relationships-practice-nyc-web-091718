class Movie
  attr_writer :name, :date, :genre

  @@all = []

  def self.all
    @@all
  end

  def self.most_actors
    most_actors = self.all.map {|movie| [movie, movie.actors.count]}.sort_by {|movie_and_characters| movie_and_characters[1]}.last
    puts "#{most_actors[0].name} has the most actors at #{most_actors[1]}."
  end

  def initialize(name, date, genre)
    @name = name
    @date = date
    @genre = genre
    @@all << self
  end

  def characters
    MovieOrShowCharacter.all.select {|showcharacter| showcharacter.movie_or_show == self}.map {|showcharacter| showcharacter.character}
  end

  def actors
    self.characters.map {|character| character.actor}.uniq
  end

  def add_character(char)
    MovieOrShowCharacter.new(char, self)
  end

end
