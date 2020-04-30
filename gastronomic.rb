require_relative 'restaurant'
require_relative 'chef'

# estamos herdando o código (variáveis e métodos) de Restaurant
class Gastronomic < Restaurant
  attr_reader :chef

  def initialize(name, type, address, time_open, time_close, stars, chef_name)

    # super chama o método da classe "mãe"
    # chamando o initialize de Restaurant
    super(name, type, address, time_open, time_close)

    # colocando as estrelas do gastronomic que estou criando
    @stars = stars

    # pra criar um novo chefe eu preciso:
    # - nome dele (chef_name == "Henrique Fogaça")
    # - o restaurante onde ele trabalha (self)
    # self == o restaurante Sal (o objeto inteiro, não só o nome)
    @chef = Chef.new(chef_name, self)

    @book_list = []
  end

  def self.open?
    true
  end

  def mostrar_lista_de_reserva
    @book_list.each do |reserva|
      puts "- #{reserva}"
    end
  end

  def reservar_uma_mesa(nome_da_pessoa)
    @book_list << nome_da_pessoa
  end
end
