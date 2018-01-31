require('minitest/autorun')
require('minitest/rg')

require_relative('../pub')
require_relative('../customer')
require_relative('../drink')

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("Drama Llama Pub")
    @drink = Drink.new("Jack Daniels", 4)
    @customer = Customer.new("Jake", 50, 18)

  end

  def test_has_name
    assert_equal("Drama Llama Pub", @pub.name)
  end

  def test_drink_stock__counter
    assert_equal(0, @pub.drink_stock)
  end

  def test_add_drink_stock
    @pub.add_drink_stock(@drink)
    assert_equal(1, @pub.drink_stock)
  end

  def test_remove_drink_stock
    @pub.add_drink_stock(@drink)
    @pub.remove_drink_stock(@drink)
    assert_equal(0, @pub.drink_stock)
  end

  def test_till_amount
    assert_equal(0, @pub.till_amount)
  end

  def test_add_till_amount
    @pub.add_till_amount(@drink)
    assert_equal(4, @pub.till_amount)
  end

  # def test_purchase
  #   @pub.add_drink_stock(@drink)
  #   @pub.remove_drink_stock(@drink)
  #   @customer.pay_for_drink(@drink)
  #   @pub.add_till_amount(@drink)
  #   assert_equal(0, @pub.drink_stock)
  #   assert_equal(4, @pub.till_amount)
  # end

  # def test_sell_drink
  #
  # end2

  def test_check_age
    assert_equal(true, @pub.check_age(@customer))
  end

  def test_sell_drink
    @pub.add_drink_stock(@drink)
    @pub.sell_drink(@customer, @drink)
    assert_equal(0, @pub.drink_stock)
    assert_equal(4, @pub.till_amount)
  end



end
