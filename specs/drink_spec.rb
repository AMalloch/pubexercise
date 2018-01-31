require('minitest/autorun')
require('minitest/rg')

require_relative('../drink')

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("Jack Daniels", 4)
  end

  def test_name
    assert_equal("Jack Daniels", @drink.name)
  end

  def test_price
    assert_equal(4, @drink.price)
  end

  


end
