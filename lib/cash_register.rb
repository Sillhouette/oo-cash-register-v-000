class CashRegister

  attr_accessor :total, :discount, :items

  #@items = []

  def initialize(discount = 0.0)
    @total = 0.0;
    @discount = discount;
    @items = []
  end

  def add_item(item, price, quantity = 1)
    quantity > 1 ? quantity.times{@items << item} : @items << item;
    @total += price * quantity;
  end

  def apply_discount
    if @discount == 0.0
      "There is not discount to apply."
    else
      discount = @total *= @discount / 100.0;
      @total -= discount;
      "Your new discount is #{@total}";
    end
  end

end
