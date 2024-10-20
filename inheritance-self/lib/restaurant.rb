# frozen_string_literal: true

require_relative 'chef'

# The Restaurant class represents a dining establishment with a name, location, capacity, and category.
# It allows clients to book reservations and provides methods to check if the restaurant is open or closed.
class Restaurant
  attr_reader :clients, :name, :location
  attr_accessor :capacity # Read and Write

  def initialize(name, location, capacity, category)
    # STATES
    @name = name
    @location = location
    @capacity = capacity
    @category = category
    @clients = []

    # self is fancy_cindy's (instance of the Restaurant)
    p 'Self is an instance method:', self
  end

  # BEHAVIOR
  def open?
    evening = Time.now.hour >= 18 && Time.now.hour <= 22

    return evening
  end

  def close?
    !open?
  end

  def book(client_name)
    @clients << client_name
  end

  def clients_list
    @clients
  end

  # self is Restaurant (class itself)
  p 'Self is an instance method:', self
  # self mean = where am I right now and I am in Restaurant class
  # This class methods can be access in the child class
  def self.categories
    %w[Dessert Breakfast Drinks]
  end

  # IF {SELF} is outside the instance method is will be the class itself but if it is inside the method, it will be
  # the instance method itself
end
