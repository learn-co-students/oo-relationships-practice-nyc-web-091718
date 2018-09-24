class Show
  attr_writer :name, :date, :genre

  @@all = []

  def self.all
    @@all << self
  end

  def initialize(name, date, genre)
    @name = name
    @date = date
    @genre = genre
  end

  def on_the_big_screen
    Movie.all.select {|movie| movie.name == self.name}
  end

  def add_character(char)
    MovieOrShowCharacter.new(char, self)
  end

  def characters
    MovieOrShowCharacter.all.select {|showcharacter| showcharacter.movie_or_show == self}
  end

  def actors
    self.characters.map {|character| character.actor}.uniq
  end

end
