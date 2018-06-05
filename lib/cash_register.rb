class CashRegister

  attr_accessor :total, :discount

  def initialize
    @total = 0;
  end

  def self.cash_register_with_discount(discount)
    @discount = discount;
  end

end
