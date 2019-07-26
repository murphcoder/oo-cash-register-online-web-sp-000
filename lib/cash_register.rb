class CashRegister
  
  attr_accessor :discount, :total
  @groceries = Array.new
  
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
  
  def add_item(name,price,quantity = 1)
    quantity.times do
      @total += price
    end
  end
  
  def apply_discount
    @total *= (100 - @discount).to_f / 100
    if @discount == 1
      return "There is no discount to apply."
    end
  end
  
  def items
    @groceries
  end
  
end
