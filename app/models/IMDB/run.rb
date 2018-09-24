require 'pry'
# require_relative './'
# require_relative './'
# require_relative './'
# require_relative './'
# require_relative './'

binding.pry


Dir['./app/models/IMDB/*'].each {|file| require file}

a1 = Actor.new("Hamilton1", 70)
a2 = Actor.new("Hamilton2", 71)
a3 = Actor.new("Hamilton3", 72)
a4 = Actor.new("Hamilton4", 73)
a5 = Actor.new("Hamilton5", 74)

binding.pry

c1 = Character.new("Squee", a1)
c2 = Character.new("Squee2", a2)
c3 = Character.new("Squee3", a3)
c4 = Character.new("Squee4", a4)
c5 = Character.new("Squee5", a4)

binding.pry

m1 = Movie.new("Halloween1", "1979", "horror")
m2 = Movie.new("Halloween2", "1979", "horror")
m3 = Movie.new("Halloween3", "1979", "horror")
m4 = Movie.new("Halloween4", "1979", "horror")
m5 = Movie.new("Halloween5", "1979", "horror")

binding.pry

m1.add_character(c1)
m1.add_character(c2)
m2.add_character(c3)

binding.pry

000
