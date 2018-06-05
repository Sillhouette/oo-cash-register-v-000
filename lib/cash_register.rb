class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0;
    @discount = discount;
  end

  def self.cash_register_with_discount(discount)
    @discount = discount;
  end

end
