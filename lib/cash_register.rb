class CashRegister

  attr_accessor :total, :discount, :items, :price, :quantity

  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @quantity = quantity
    counter = 0
    while (counter < quantity)
      @items << title
      counter += 1
    end
    @total += @price*@quantity
    #puts self.apply_discount
  end

  def apply_discount
    discount = 0.01*@discount*@price*@quantity
    @total -= discount
    @discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total}."
  end

  def void_last_transaction

  end

end
