class Dessert
  attr_accessor :bakery, :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_ingredient(ingredient, calorie_count)
    new_ingredient = Ingredient.new(ingredient, calorie_count)
    new_ingredient.dessert = self
  end

  def ingredients
    Ingredient.all.select {|ingredient| ingredient.dessert == self}
  end

  def calories
    self.ingredients.map {|ingredient| ingredient.calorie_count}.reduce(:+)
  end

end
