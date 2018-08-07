class CashRegister
  attr_accessor :total

  def initialize(total = 0, cash_register_with_discount = 20)
    @total = total
    @cash_register_with_discount = cash_register_with_discount
  end

  def discount
  end
end
