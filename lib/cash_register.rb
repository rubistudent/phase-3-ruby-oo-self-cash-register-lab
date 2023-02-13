class CashRegister
    attr_accessor :item, :price, :quantity, :items
    attr_reader :total, :discount

    def initialize(discount=0)
     @discount = discount
     @total = 0
     @items = []
    end

    def total=(total)
     @total = total
    end

    def add_item(name, price, quantity = 1)
      self.item = name
      self.price = price
      self.quantity = quantity
      self.quantity.times { |i|  self.items.push(self.item)}
      @total  += self.price * self.quantity
    end

    def apply_discount

         if @discount != 0
             @total = @total * (100 - @discount)/100
             "After the discount, the total comes to $#{@total}."
         else
             "There is no discount to apply."
         end
    end

    def void_last_transaction
         @total -= self.price * self.quantity
    end

end
