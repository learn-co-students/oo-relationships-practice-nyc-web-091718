class Bakery
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def desserts
    Dessert.all.select do |dessert|
      dessert.bakery == self
    end
  end

  def ingredients
    self.desserts.map do |dessert|
      dessert.ingredients
    end
  end

  def shopping_list
    ing_array = []
    self.ingredients.each do |ingredient|
      ingredient.map do |ingredient|
        ing_array << ingredient.name
      end
    end
    ing_array.join(", ")
  end

  def average_calories
    total_cals = 0
    ing_count = 0

    self.ingredients.each do |ingredient|
      ingredient.each do |ingredient|
        total_cals += ingredient.calories
        ing_count += 1
      end
    end
    total_cals / ing_count
  end

##### Class Methods
  def self.all
    @@all
  end

end ### End of Bakery Class

#### Bakery
# - DONE #ingredients
#   - should return an array of ingredients for the bakery's desserts
#
# -DONE #desserts
#   - should return an array of desserts the bakery makes

# - DONE #shopping_list
#   - should return a string of names for ingredients for the bakery
#
# - DONE #average_calories
#   - should return a number totaling the average number of calories for the desserts sold at this bakery

#
# - DONE .all
#   - should return an array of all bakeries
#
#
#
