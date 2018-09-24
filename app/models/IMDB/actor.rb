class Actor
  attr_accessor :name, :age

  @@all = []

  def self.all
    @@all
  end

  def self.most_characters
    actor_and_characters = self.all.map {|actor| [actor, actor.characters.count]}.sort_by {|actor_and_characters| actor_and_characters[1]}.last
    puts "#{actor_and_characters[0].name} has the most characters at #{actor_and_characters[1]}."
  end

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def characters
    Character.all.select {|character| character.actor == self}
  end


end
