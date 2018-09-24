require 'pry'
require_relative './Guest.rb'
require_relative './Listing.rb'
require_relative './Trip.rb'

l1 = Listing.new("Seattle")
l2 = Listing.new("Copenhagen")
l3 = Listing.new("Pizza")

g1 = Guest.new("Jamal")
g2 = Guest.new("Kenny")
g3 = Guest.new("Thomas")

t1 = Trip.new(l1, g1)
t2 = Trip.new(l2,g1)
t3 = Trip.new(l1,g2)

# binding.pry
0
