class CashRegister

  attr_accessor :total, :discount, :items

  #@items = []

  def initialize(discount = 0)
    @total = 0.0;
    @discount = discount;
    @items = []
  end

  def add_item(item, price, quantity = 1)
    quantity > 1 ? quantity.times{@items << item} : @items << item; 
    @total += price * quantity;
  end

end
