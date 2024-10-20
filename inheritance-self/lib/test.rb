# frozen_string_literal: true

require_relative 'restaurant'

cindys = Restaurant.new("Cindy's table", 'Yokohama', 10, 'Dessert', 'Chef Cindy')
# p cindys.open?
# p cindys.close?

cindys.book('Sarah')
cindys.book('Jasmine')
cindys.book('Allan')

# p cindys.clients

# p cindys.capacity
# cindys.capacity += 5
# p cindys.capacity

# p Restaurant.categories

p cindys.chef.name
p cindys.chef.restaurant.chef.name
