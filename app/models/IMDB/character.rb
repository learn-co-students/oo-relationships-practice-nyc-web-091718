class Character
  attr_accessor :name, :actor
  @@all = []

  def self.all
    @@all
  end

  def initialize (name, actor)
    @name = name
    @actor = actor
    @@all << self
  end

  def self.most_appearances
    character_and_appearances = self.all.map {|character| [character, character.appearances.count]}.sort_by {|character_and_appearances| character_and_appearances[1]}
    puts "#{character_and_appearances.last[0]} has the most appearances at #{character_and_appearances.last[1]}."
  end

  def appearances
    MovieOrShowCharacter.all.map {|movieorshowcharacter| movieorshowcharacter.character == self}
  end

  def add_movie_or_show(movie_or_show)
    MovieOrShowCharacter.new(self, movie_or_show)
  end

end
