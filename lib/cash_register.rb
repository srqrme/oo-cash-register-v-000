require 'pry'
class CashRegister
  attr_accessor :total, :discount

  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
    @@items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    @@items << title
  end

  def apply_discount
    if discount != nil
      discounted = discount.to_f/100
      applied_discount = total * discount
      total_discount = total - applied_discount
      puts "After the discount, the total comes to #{total_discount}"
    else
      puts "There is no discount to apply."
    end
  end
end
