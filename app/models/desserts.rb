class Dessert
  attr_accessor :bakery, :name, :ingredient
  @@all = []

  def initialize(name, bakery)
    @name = name
    @bakery = bakery

    @@all << self
  end

  def ingredients
    Ingredient.all.select do |ingredient|
      ingredient.dessert == self
    end
  end

  def add_ingredient(name, calories)
    Ingredient.new(name, calories, self)
  end

  def calories
    total_cals = []

    self.ingredients.select do |ingredient|
      total_cals << ingredient.calories
    end
    total_cals.inject(0){|sum,cals| sum + cals }
  end


#### Class Methods
  def self.all
    @@all
  end

end ### End of Dessert Class

# - DONE - #ingredients
#   - should return an array of ingredients for the dessert
#
# - DONE - #bakery
#   - should return the bakery object for the dessert
#
# - DONE #calories
#   - should return a number totaling all the calories for all the ingredients included in that dessert
#
# DONE - .all
#   - should return an array of all desserts
