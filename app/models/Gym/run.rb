require 'pry'
require_relative './client.rb'
require_relative './location.rb'
require_relative './trainer.rb'


l1 = Location.new("New York")
l2 = Location.new("Seattle")
l3 = Location.new("Kiki_Gym")
binding.pry
c1 = Client.new("Karen", l1)
c3 = Client.new("Jim", l1)
c2 = Client.new("Kyaaaaaa", l2)
binding.pry

t1 = Trainer.new("Klipper", l1)
t2 = Trainer.new("Blipper", l2)
t3 = Trainer.new("KKKKKKKEEEEAAA", l3)
binding.pry
c1.assign_trainer(t1)
c2.assign_trainer(t2)
c3.assign_trainer(t3)

binding.pry

00
