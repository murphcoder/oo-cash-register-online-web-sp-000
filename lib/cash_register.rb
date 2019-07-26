class CashRegister
  
  @discount = 0.0
  @groceries = []
  
  def initialize(discount = 100)
    @discount = discount / 100
    @total = 0
  end
  
  def monetize(number)
    '%.2f' % ((number.to_f) / 100)
  end
  
  def demonetize(number)
    ((number.to_f) * 100).to_i
  end
  
  def total
    (@total.to_f) / 100
  end
  
  def add_item(item,price,quantity = 1)
    @groceries << item
    @total += self.demonetize(price) * quantity
  end
  
  def apply_discount
    @total *= @discount
    if @discount == 1
      return "There is no discount to apply."
    end
  end
  
  
  
end
