
class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction
    

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(item, price, quantity = 1 )
        self.total += (price * quantity)
        quantity.times do 
            @items << item 
        end
        self.last_transaction = (price * quantity)
    end


    def apply_discount
        if @discount == 0 
            return "There is no discount to apply."
        end
        self.total -= @total * @discount /100
        return "After the discount, the total comes to $#{@total}."
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end


    

end


