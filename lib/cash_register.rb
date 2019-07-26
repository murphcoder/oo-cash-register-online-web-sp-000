class CashRegister
  
  attr_accessor :discount, :total
  @groceries = []
  
  def initialize(discount = 100)
    @discount = discount
    @total = 0
  end
  
  def monetize(number)
    '%.2f' % ((number.to_f) / 100)
  end
  
  def demonetize(number)
    ((number.to_f) * 100).to_i
  end
  
  def total
    @total
  end
  
  def add_item(item,price,quantity = 1)
    @total += price * quantity
    @groceries << item
  end
  
  def apply_discount
    @total *= @discount.to_f / 100
    if @discount == 1
      return "There is no discount to apply."
    end
  end
  
  def items
    @groceries
  end
  
end
