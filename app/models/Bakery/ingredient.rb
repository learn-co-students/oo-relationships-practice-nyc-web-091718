class Ingredient
  attr_accessor :calorie_count, :name, :dessert

  @@all = []

  def self.all
    @@all
  end

  def self.find_all_by_name(name)
    Ingredient.all.select {|ingredient| ingredient.name.include? name}
  end

  def initialize(name, calorie_count)
    @name = name
    @calorie_count = calorie_count
    @@all << self
  end

  def bakery
    self.dessert.bakery
  end
end
