require_relative "gastronomic"

sal = Gastronomic.new("Sal", "moderno", "jardins", 6, 23, 2)

sal.reservar_uma_mesa("Ruben")
sal.reservar_uma_mesa("Bia")

puts sal.name
sal.mostrar_lista_de_reserva
