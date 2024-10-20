require_relative "restaurant"

class FancyRestaurant < Restaurant
  # You can remove this since it is the same as the Restaurant class
  # attr_reader :clients, :name, :location
  # attr_accessor :capacity
  def initialize(name, location, capacity, category, stars)
    # this is calling the initialize from my parent class
    super(name, location, capacity, category)
    # STATES
    @stars = stars
  end

  def clients_list
    'Sorry, private info!'
  end
end
