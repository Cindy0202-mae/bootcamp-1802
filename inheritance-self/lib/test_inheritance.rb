# frozen_string_literal: true

require_relative 'fancy_restaurant'
require_relative 'fast_food_restaurant'
require_relative 'restaurant'
require 'date'
require 'json'

fancy_cindys = FancyRestaurant.new('Cindy\'s table', 'Yokohama', 10, 'desserts', 3)
p fancy_cindys.open?
p fancy_cindys.close?

fancy_cindys.book('Sarah')
fancy_cindys.book('Jasmine')
fancy_cindys.book('Allan')

p fancy_cindys.clients

wendys = FastFoodRestaurant.new('wendy\'s', 'Shibuya', 40, 'burger', 10)
p wendys
p wendys.name
p wendys.open?

wendys.book('Rayz')
wendys.book('Alex')

p wendys.clients_list

# Class Methods
p Time.now
p JSON.parse('{}')

# example of class methods call in class
# class name . class method's name
p Restaurant.categories
