class Chef
  attr_reader :name, :restaurant
  def initialize(name, restaurant)
    @name = name # String
    @restaurant = restaurant # instance of Restaurant
  end
end
