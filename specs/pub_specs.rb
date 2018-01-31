require('minitest/autorun')
require('minitest/rg')

require_relative('../pub')
require_relative('../customer')

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("Drama Llama Pub")

  end

  def test_has_name
    assert_equal("Drama Llama Pub", @pub.name)
  end



end
