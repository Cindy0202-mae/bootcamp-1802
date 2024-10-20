# frozen_string_literal: true

require_relative 'restaurant'
# FastFoodRestaurant is a subclass of Restaurant that includes additional functionality
# such as specific opening hours for morning and evening.
class FastFoodRestaurant < Restaurant
  # You can remove this since it is the same as the Restaurant class
  # attr_reader :clients, :name, :location
  # attr_accessor :capacity
  def initialize(name, location, capacity, category)
    super(name, location, capacity, category)
    # STATES
    # you still need to write the params even though you call the super keyword
    @clients = []
    # CAREFUL!!
    # super
    # # is the same as
    # super(name, location, capacity, category, prep_time)
  end

  def open?
    evening = super() # always round brackets to be safe
    morning = Time.now.hour >= 8 && Time.now.hour <= 12
    evening || morning
  end
end
