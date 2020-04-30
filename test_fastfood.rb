require_relative "fastfood"

mac = Fastfood.new("McDonalds", "burgers", "qualquer esquina", 12, 23, 12)

# executando aberto_ou_nao de um fastfood
puts "#{mac.name} está #{mac.aberto_ou_nao}"

puts "#{mac.name} demora #{mac.time_ready} minutos para preparar o lanche"

