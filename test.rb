require_relative "restaurant"

mac = Restaurant.new("McDonalds", "burgers", "qualquer esquina", 6, 23)

bk = Restaurant.new("Burger King", "burgers", "qualquer outra esquina", 11, 22)

# p mac
puts "#{mac.name} está localizado em #{mac.address}"
puts "#{bk.name} está localizado em #{bk.address}"

mac.address = "numa esquina específica"
puts "#{mac.name} está localizado em #{mac.address}"
puts "#{bk.name} está localizado em #{bk.address}"

puts "#{mac.name} está #{mac.aberto_ou_nao}"
puts "#{bk.name} está #{bk.aberto_ou_nao}"

