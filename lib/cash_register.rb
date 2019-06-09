class CashRegister

  attr_accessor :total, :discount, :items
  def self.items
    @items
  end

  def initialize(amount = nil)
    @total = 0
    @discount = amount
    # if amount != nil
    #   @discount = amount
    # end
    @items = []
  end

  def add_item(name, cost, qty = 1)
    @total = @total + (cost * qty)
    i = 0
    while i < qty
      i += 1
      @items << name
    end
  end

  def apply_discount
    puts "discount : #{@discount}"
    if @discount != nil
      @total = @total * (1.0 - (0.01 * @discount))
      "After the discount, the total comes to $#{@total}."
    elsif
      "There is no discount to apply."
    end
  end

end
