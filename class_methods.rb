require_relative 'restaurant'
require_relative 'gastronomic'
require 'json'

# antes de criar um restaurante, eu quero saber quais categorias eu tenho
# p Restaurant.possible_categories

p Gastronomic.possible_stars
p Gastronomic.possible_categories

mac = Restaurant.new("McDonalds", "burgers", "qualquer esquina", 6, 23)

sal = Gastronomic.new("Sal", "moderno", "jardins", 18, 23, 2)

p Gastronomic.open?   # => true
p mac.open?           # => true
p sal.open?           # => false
p Restaurant.open?    # => erro!

