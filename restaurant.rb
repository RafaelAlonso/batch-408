class Restaurant
  # Encapsulamento
  attr_reader :name
  attr_accessor :address # reader + writer

  def self.possible_categories
    ["Burgers", "Italian", "Modern", "Vegan"]
  end

  def self.possible_affordabilities
    ['$', '$$', '$$$']
  end

  def initialize(name, type, address, time_open, time_close)
    # definir o estado inicial do nosso objeto quando ele é criado
    @name = name
    @type = type
    @address = address
    @time_open = time_open
    @time_close = time_close
  end

  # gerado pelo attr_reader :name
    # def name
    #   @name
    # end

  # gerado pelo attr_writer :address
    # def address=(new_address)
    #   @address = new_address
    # end

  # método de instância
  # => é um comportamento de um restaurante em específico
  def open?
    if Time.now.hour >= @time_open && Time.now.hour <= @time_close
      # Se estivermos entre 6 e 22 o restaurante está aberto
      true
    else
      # Em qualquer outro horário ele está fechado
      false
    end
  end

  def aberto_ou_nao
    # aberto_ou_nao do mac
    # condition ? if_true : if_false
    open? ? "aberto" : "fechado"
  end
end
