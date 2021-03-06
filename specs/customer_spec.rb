require('minitest/autorun')
require('minitest/rg')

require_relative('../customer')
require_relative('../drink')
require_relative('../pub')
require_relative('../food')

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Jake", 50, 18)
    @drink = Drink.new("Jack Daniels", 4, 1)
    @pub = Pub.new("Drama Llama Pub")
    @food = Food.new("Kebab", 5, -2)

  end

  def test_name
    assert_equal("Jake", @customer.name)
  end

  def test_wallet_amount
    assert_equal(50, @customer.wallet)
  end

  def test_customer_drinks_in_belly__empty
    assert_equal(0, @customer.drinks_in_belly)
  end

  def test_customer_get_drink
    @customer.get_drink(@drink)
    assert_equal(1, @customer.drinks_in_belly)
  end

  def test_customer_pay_for_drink
    @customer.pay_for_drink(@drink)
    assert_equal(46, @customer.wallet)
  end

  def test_customer_age
    assert_equal(18, @customer.age)
  end

  def test_drunk_level__empty
    assert_equal(0, @customer.drunk_level)
  end

  def test_drunk_increase
    @customer.get_drink(@drink)
    assert_equal(1, @customer.drunk_level)
  end

  def test_customer_food_in_belly__empty
    assert_equal(0, @customer.food_in_belly)
  end

  def test_customer_get_food
    @customer.get_food(@food)
    assert_equal(1, @customer.food_in_belly)
  end

  def test_customer_pay_for_food
    @customer.pay_for_food(@food)
    assert_equal(45, @customer.wallet)
  end

  def test_customer_sober_food
    @customer.get_drink(@drink)
    @customer.get_drink(@drink)
    @customer.get_drink(@drink)
    @customer.get_food(@food)
    assert_equal(1, @customer.drunkenness)
  end


end
