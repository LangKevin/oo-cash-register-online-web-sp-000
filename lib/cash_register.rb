class CashRegister

  attr_accessor :total, :discount
  def self.items
    @items
  end

  def initialize(amount = nil)
    @total = 0
    @discount = 0
    if amount != nil
      @discount = amount
    end
    @items = []
  end

  def add_item(name, cost, qty = 1)
    @total = @total + (cost * qty)
    i = 0
    while i < qty
      i =+ 1
      @items << name
    end
  end
end
