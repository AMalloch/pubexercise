require('minitest/autorun')
require('minitest/rg')

require_relative('../customer')
require_relative('../drink')
require_relative('../pub')

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Jake", 50, 18)
    @drink = Drink.new("Jack Daniels", 4)
    @pub = Pub.new("Drama Llama Pub")

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


end
