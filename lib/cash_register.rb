class CashRegister
  attr_accessor :total, :discount

  def initialize(total, discount = 20)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end
end
