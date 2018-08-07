class CashRegister
  attr_accessor :total

  def initialize(total = 0, employee_discount = nil)
    @total = total
    @employee_discount = employee_discount
  end

  def discount
  end
end
