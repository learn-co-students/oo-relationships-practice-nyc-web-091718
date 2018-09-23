require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end

#Pry.start

# g1 = Guest.new("jeff")
# g2 = Guest.new("jeffrey")
# g3 = Guest.new("j")
#
# l1 = Listing.new("NYC")
# l2 = Listing.new("London")
# l3 = Listing.new("NYC")
# l4 = Listing.new("Tel")
#
# t1 = Trip.new(l1,g1)
# t2 = Trip.new(l4,g2)
# t3 = Trip.new(l3,g3)
# t4 = Trip.new(l2,g3)
# t5 = Trip.new(l4,g2)
# t6 = Trip.new(l4,g1)

b1 = Bakery.new("cook")
b2 = Bakery.new("bake")

d1 = Dessert.new(b1, "cake")
d2 = Dessert.new(b1, "cupcake")
d3 = Dessert.new(b2, "muffin")

 i1 = Ingredient.new(d1,b1,300,"Chocolate Sprinkles")
 i2 = Ingredient.new(d1,b1,150,"Chocolate Frosting")
 i3 = Ingredient.new(d3,b2,110,"flour")

Pry.start
#binding.pry
