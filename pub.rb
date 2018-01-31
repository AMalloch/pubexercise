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
    for alcohol in @drinks
      if alcohol == drink
        @drinks.delete(drink)
      else return "We've no got that pal!"
      end
    end
  end

  def till_amount
    return @till
  end

  def add_till_amount(drink)
    @till += (drink.price)
  end

  def sell_drink(customer, drink)
    remove_drink_stock(drink)
    customer.pay_for_drink(drink)
    add_till_amount(drink)
  end

end
