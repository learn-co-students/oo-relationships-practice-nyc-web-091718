require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#### Lyft Testing #####
d1 = Driver.new("Driver1")
d2 = Driver.new("Driver2")
d3 = Driver.new("Driver3")
d4 = Driver.new("Driver4")

p1 = Passenger.new("Passenger1")
p2 = Passenger.new("Passenger2")
p3 = Passenger.new("Passenger3")
p4 = Passenger.new("Passenger4")

r1 = Ride.new(d1, p1, 300)
r2 = Ride.new(d1, p3, 600)
r3 = Ride.new(d2, p2, 30)
r4 = Ride.new(d3, p1, 10)






#####IMDB Testing #########
# a1 = Actor.new("Ben")
# a2 = Actor.new("Bill")
# a3 = Actor.new("Sean")
# a4 = Actor.new("Tony")
#
# s1 = Show.new("Entourage")
# s2 = Show.new("Ozarks")
# s3 = Show.new("Seinfeld")
# s4 = Show.new("Cats")
#
# m1 = Movie.new("LOT")
# m2 = Movie.new("Harry Potter")
# m3 = Movie.new("Jurassic Park")
# m4 = Movie.new("Entourage")
#
# c1 = Character.new("Frodo", a1, nil ,m1)
# c2 = Character.new("Turtle", a2, s1)
# c3 = Character.new("Marty", a3, s2)
# c4 = Character.new("Cat1", a4, s4)
# c5 = Character.new("Cat2", a1, s4)
# c6 = Character.new("Harry", a1, nil ,m2)
# c7 = Character.new("TRex", a4, nil ,m3)
# c8 = Character.new("Drama", a1, nil ,m4)










# #### BAKERY TEST FILES
# b1 = Bakery.new("Cool Bakery")
# b2 = Bakery.new("Nice Bakery")
# b3 = Bakery.new("Bad Bakery")
#
# d1 = Dessert.new("Brownies", b1)
# d2 = Dessert.new("Cookies", b2)
# d3 = Dessert.new("Fudge", b1)
# d4 = Dessert.new("Cake", b3)
#
# i1 = Ingredient.new("milk", 260, d1)
# i2 = Ingredient.new("egg", 70, d2)
# i3 = Ingredient.new("salt", 800, d3)
# i4 = Ingredient.new("sugar", 800, d4)
#
# i5 = d1.add_ingredient("butter", 120)



#### AIRBNB TEST FILES
# ted = Guest.new("Ted")
# bill = Guest.new("Bill")
#
# toronto = Listing.new("Toronto")
# denver = Listing.new("Denver")
# la = Listing.new("LA")
#
# t1 = Trip.new(ted, toronto)
# t2 = Trip.new(bill, denver)
# t3 = Trip.new(ted, la)
# t4 = Trip.new(bill, toronto)

binding.pry
0
