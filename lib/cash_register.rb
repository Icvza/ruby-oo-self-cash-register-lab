
class CashRegister

    def initialize(discount = 0)
        @discount = discount
        @total = 0
    end

    def total=(total)
        @total = total 
    end

    def total
        return @total
    end

    def add_item(item, price, ammount)
        self.total += price
        if ammount > 0
            ammount *= price 
        end

            
    end

    def discount=(discount)
        @discount = discount
    end

    def discount
        @discount
    end


end
