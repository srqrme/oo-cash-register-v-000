require 'pry'
class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 20)
    @total = 0
    @discount = discount
    @@items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    @@items << title
  end

  def apply_discount
    binding.pry
    if discount != 0
      discounted = discount.to_f/100
      binding.pry
      applied_discount = total * discounted
      binding.pry
      total = total - applied_discount
      puts "After the discount, the total comes to #{total_discount}"
    else
      puts "There is no discount to apply."
    end
  end
end
