# 5. 継承
#自動販売機クラスを作成
class VendingMachine
    def initialize(manufacturer)
        @manufacturer = manufacturer
        @coin  = 0
        @cup_num = 0
    end
    def deposit_coin(coin)
        if coin == 100
            @coin  += coin
        else
            puts "Only 100 yen are accepted."
    end
end

    def press_button(item)
        if @coin  >= item.price
            if item.name == "hot_cup_coffee" || item.name == "ice_cup_coffee"
                if @cup_num > 0
                    @cup_num -= 1
                else
                    return "カップが足りない"
                end
            end
            @coin  -= item.price

            return item.name
            

        else
            puts "#{item.name} costs #{item.price} yen. Please deposit more coins."
        end
    
    end
    def add_cup(num)
        if @cup_num <= 99
            @cup_num += num
        end
    end
end
class Item
    attr_reader :name, :price
    def initialize(name, price)
        @name = name
        @price = price
    end
end

class Drink < Item
    def initialize(name)
        price = 0
        if name == "cider"
            price = 100
        elsif name == "cola"
            price = 150
        end
        super(name, price)
    end

end

class Cupcoffee< Item
    def initialize(type)
        if type == "hot"
            name = "hot_cup_coffee"
        elsif type == "ice"
            name = "ice_cup_coffee"
        end
        super(name,100)
        @type = type
    end
end

hot_cup_coffee = Cupcoffee.new('hot');
cider = Drink.new('cider')
vending_machine = VendingMachine.new('サントリー')
vending_machine.deposit_coin(100)
vending_machine.deposit_coin(100)
puts vending_machine.press_button(cider)

puts vending_machine.press_button(hot_cup_coffee)
vending_machine.add_cup(1)
puts vending_machine.press_button(hot_cup_coffee)
