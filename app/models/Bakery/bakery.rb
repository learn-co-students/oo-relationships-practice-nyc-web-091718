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

  def desserts
    Dessert.all.select {|dessert| dessert.bakery == self}
  end

  def ingredients
    self.desserts.map {|dessert| dessert.ingredients}.flatten
  end

  def create_dessert(name)
    new_dessert = Dessert.new(name)
    new_dessert.bakery = self
    new_dessert
  end

  def average_calories
    self.desserts.map {|dessert| dessert.calories}.reduce(:+)
  end

  def shopping_list
    shopping_list = {}
    binding.pry
    self.ingredients.map {|ingredient| ingredient.name}.each do |ingredient|
      shopping_list[ingredient] ||= 0
      shopping_list[ingredient] += 1
    end
    shopping_list
  end


end
