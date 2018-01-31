class Customer
attr_reader :name, :age
attr_accessor :wallet, :drunkenness
  def initialize(name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @stomach = []
    @age = age
    @drunkenness = 0
  end

  def drinks_in_belly
    @stomach.length
  end

  def get_drink(drink)
    @stomach << drink
    @drunkenness += (drink.level)
  end

  def pay_for_drink(drink)
    @wallet -= (drink.price)
  end

  def drunk_level
    return @drunkenness
  end
end
