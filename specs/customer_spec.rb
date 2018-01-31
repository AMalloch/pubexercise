require('minitest/autorun')
require('minitest/rg')

require_relative('../customer')

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Jake", 50)

  end



end
