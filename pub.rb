class Pub
attr_reader :name
  def initialize(name)
    @name = name
    @til = 0
    @drinks = []
  end

  def drink_stock
    return @drinks.length
  end

  def add_drink_stock(drink)
    @drinks << drink
  end

  def remove_drink_stock(drink)
    @drinks.pop
  end

end
