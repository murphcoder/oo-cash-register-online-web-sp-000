class CashRegister
  
  attr_accessor :discount, :total, :groceries
  
  def initialize(discount = 0.0)
    @total = 0.0
    @discount = discount
    @groceries = []
  end
  
  def add_item(title,price,quantity = 1)
    quantity.times do
      @total += price
      @groceries << title
    end
  end
  
  def apply_discount
    @total *= ((100.0 - @discount) / 100.0)
  end
  
end