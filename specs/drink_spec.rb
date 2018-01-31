require('minitest/autorun')
require('minitest/rg')

require_relative('../drink')

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("Jack Daniels", 4)
  end


end
