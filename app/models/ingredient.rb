class Ingredient
  attr_accessor :dessert, :bakery, :calorie_count, :name
  @@all = []

  def self.all
    @@all
  end

  def self.find_all_by_name(ingred)
    @@all.select do |ing|
      ing.name.include?(ingred)
    end
  end

  def initialize(dessert, bakery, calorie_count,name)
    @dessert = dessert
    @bakery = bakery
    @calorie_count = calorie_count
    @name = name

    @@all << self
  end


end #end of ingredient class
