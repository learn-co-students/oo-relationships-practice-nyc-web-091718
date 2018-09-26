class Ingredient
  attr_reader :name, :calories, :dessert
  @@all = []

  def initialize(name, calories, dessert)
    @name = name
    @calories = calories
    @dessert = dessert

    @@all << self
  end

  def dessert
    @dessert
  end

  def bakery
    self.dessert.bakery
  end



#### Class Methods
  def self.all
    @@all
  end

  def self.find_all_by_name(ingredient)
    all.find_all do |ing|
      ing.name.start_with?(ingredient) || ing.name.end_with?(ingredient)
    end
  end

end ### End of Ingredient Class

# -DONE - #dessert
#   - should return a dessert object for that ingredient

# - DONE #bakery
#   - should return the bakery object for the bakery that uses that ingredient

# - DONE .all
#   - should return an array of all ingredients

# - DONE - .find_all_by_name(ingredient)
#   - should take a string argument return an array of all ingredients that include that string in their name

#  DONE   - .find_all_by_name('chocolate') might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
#     - make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')
