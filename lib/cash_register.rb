class CashRegister
  
  @discount = 0
  @grocery_list = {}
  
  def initialize(discount = 1)
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
    (@total.to_f) / 100
  end
  
  def add_item(item,price,quantity = 1)
    @grocery_list[item] = price
    @total += self.demonetize(price) * quantity
  end
  
  def apply_discount
    @total 
  
end
