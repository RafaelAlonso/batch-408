require_relative 'gastronomic'
require_relative 'chef'

# Criando um novo restaurante
sal = Gastronomic.new("Sal", "moderno", "jardins", 18, 23, 2, "Henrique Fogaça")

# Criando um novo chefe
jacquin = Chef.new("Jacquin", sal)

# sal           => Gastronomic
# sal.chef      => Chef
# sal.chef.name => String
puts sal.chef.name
