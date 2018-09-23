class Dessert
  attr_accessor :bakery, :name

  @@all = []
  def self.all
    @@all
  end

  def initialize(bakery,name)
    @bakery = bakery
    @name = name

    @@all << self
  end

  def ingredients
    Ingredient.all.select do |ingred|
      ingred.dessert == self
    end
  end

  def calories
    self.ingredients.map do |ingred|
      ingred.calorie_count
    end.inject(0){|sum,x| sum + x }
  end

end #end of Dessert class
