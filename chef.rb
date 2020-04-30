class Chef
  attr_reader :name

  def initialize(name, restaurant)
    @name = name                # => String
    @restaurant = restaurant    # => Restaurant
  end

  def trabalhando?
    # só precisamos de require_relative quando usamos a classe
    # como estamos usando a instância, não precisamos
    @restaurant.open?
  end
end
