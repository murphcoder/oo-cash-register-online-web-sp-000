class CashRegister
  
  attr_accessor :discount, :total, :groceries
  
  def initialize(discount = 100)
    @total = 0.0
    @discount = discount
    @groceries = []
  end
  
  def add_item(title,price,quantity)
    quantity.times do
      @total += price
      @groceries << title
    end
  end
  
end