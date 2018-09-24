require_relative './bakery.rb'
require_relative './dessert.rb'
require_relative './ingredient.rb'
require 'pry'

b1 = Bakery.new("Jims")
b2 = Bakery.new("Johns")
b3 = Bakery.new("Katies")

d1 = b1.create_dessert("sawdust")
d2 = b1.create_dessert("lollipop")
d3 = b2.create_dessert("bones")
d4 = b3.create_dessert("cookies")


i1 = d1.add_ingredient("sawdust", 5)
i2 = d1.add_ingredient("dust", 2)
i3 = d2.add_ingredient("syrup", 80)
i4 = d3.add_ingredient("bones", 1)
i5 = d4.add_ingredient("sugar", 120)
binding.pry
0
0
0
0
0
0
0
0
0
0
0
0
