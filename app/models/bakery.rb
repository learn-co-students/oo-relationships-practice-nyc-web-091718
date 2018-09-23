class Bakery
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def ingredients
    Ingredient.all.select do |ingred|
      ingred.bakery == self
    end
  end

  def desserts
    Dessert.all.select do |dess|
      dess.bakery == self
    end
  end

  def average_calories
    self.desserts.map do |dess|
      dess.calories
    end.inject{ |sum, el| sum + el }.to_f / self.desserts.size
  end

  def shopping_list
    self.ingredients.map do |ing|
      ing.name
    end.join(", ")
  end

end #end of Bakery class
