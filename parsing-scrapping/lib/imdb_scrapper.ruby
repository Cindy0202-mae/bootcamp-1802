require "open-uri"
require "nokogiri"

url = "https://www.imdb.com/title/tt0111161/"

doc.search('.ipc-title__text').each do |element|
  # For each item found, we extract its title and print it
end

# CSS selector

# .class_name
# #id_name
# (.first_class .child_class) this looks for a smaller class nested inside a bigger element
# (.first_class.second_class) looks for an element with both classes
