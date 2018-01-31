require('minitest/autorun')
require('minitest/rg')

require_relative('../customer')

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Jake", 50)

  end

  def test_name
    assert_equal("Jake", @customer.name)
  end

  def test_wallet_amount
    assert_equal(50, @customer.wallet)
  end



end
