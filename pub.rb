class Pub
attr_reader :name
  def initialize(name)
    @name = name
    @till = 0
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

  def till_amount
    return @till
  end

  def add_till_amount(drink)
    @till += (drink.price)
  end
end
