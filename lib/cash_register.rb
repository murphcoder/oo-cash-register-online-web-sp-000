class CashRegister
  
  attr_accessor :discount, :total
  
  def initialize(discount = 100)
    @total = 0
    @discount = discount
  end
 
end