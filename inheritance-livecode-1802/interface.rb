require_relative "lion"
require_relative "meerkat"
require_relative "warthog"
# TODO
# 1. Define Animal with initialize
#    expose its name.

# 2. Define three Lion, Meerkat and Warthog
#    classes

# 3. Implement a #talk instance method which
#    returns a sentence like "Simba roars"
#    for each animal. (Hint: Meerkats bark
#    and Warthog grunt)

# 4. In interface.rb, create an array
#    with Simba, Nala, Timon & Pumbaa, iterate
#    over it and puts the sound each animal make
animals = [Lion.new("Simba"), Lion.new("Nala"), Meerkat.new("Timon"), Warthog.new("Pumbaa")]
animals.each do |animal|
  puts animal.talk
end

# 5. Implement a ::phyla class method which
#    return an array

# 6. Add an #eat(food) instance method
#    in Animal which returns a sentence
#    like 'Timon eats a scorpion'. Then
#    override this method for the Lion class,
#    and return a sentence like 'Simba eats
#    a gazelle. Law of the Jungle!'
