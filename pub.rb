class Pub
  attr_reader :name
  def initialize(name)

    @name = name
    @till = 0
    @drinks = [
      {name: "Jack Daniels", price: 4},
      {name: "Gordons Gin", price: 3},
      {name: "Glenns Vodka", price: 2}
    ]
    @food = []
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
      end
    end
  end

  def till_amount
    return @till
  end

  def add_till_amount(drink)
    @till += (drink.price)
  end

  def check_age(customer)
    if customer.age >= 18
      return true
    end
  end

  def sell_drink(customer, drink)
    check_age(customer)
    remove_drink_stock(drink)
    customer.pay_for_drink(drink)
    add_till_amount(drink)
  end

  def check_drunkenness(customer)
    if customer.drunkenness >= 10
      return "Get out ma pub!"
    else
      return customer.drunkenness
    end
  end

  def food_stock
    return @food.length
  end

  def add_food_stock(food)
    @food << food
  end

  def remove_food_stock(food)
    for item in @food
      if item == food
        @food.delete(food)
      end
    end
  end

end
