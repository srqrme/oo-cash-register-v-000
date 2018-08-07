require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    @@items << title
  end

  def apply_discount
    if discount > 0
      discounted = discount.to_f/100
      applied_discount = self.total * discounted
      self.total = self.total - applied_discount
        "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    add_item
  end
end
