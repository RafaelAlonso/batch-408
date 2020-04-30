require_relative 'restaurant'

# estamos herdando o código (variáveis e métodos) de Restaurant
class Fastfood < Restaurant
  attr_reader :time_ready

  def initialize(name, type, address, time_open, time_close, time_ready)

    # eu quero executar o initialize de Restaurant
    super(name, type, address, time_open, time_close)

    # código extra exclusivo de FastFoods
    @time_ready = time_ready
  end

  # sobrescrevendo o método #open? de Restaurant
  def open?
    true
  end


end
