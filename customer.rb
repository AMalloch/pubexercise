class Customer
attr_reader :name
attr_accessor :wallet
  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @stomach = []
  end

  def drinks_in_belly
    @stomach.length
  end

end
