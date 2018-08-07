class CashRegister
  attr_accessor :total

  def initialize(total = 0, employee_discount = 20)
    @total = total
    @employee_discount = employee_discount
  end

  def discount
  end
end
