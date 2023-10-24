#チェリー本 オブジェクト指向参考

#インスタンス変数はクラスの外部から参照することができない。もし参照したい場合は参照用のメソッドを作る必要がある。

# class User
#     def initialize(name)
#         @name = name
#     end

#     #@nameを外部から参照するためのメソッド
#     def name
#         @name
#     end
# end
# user = User.new("Alice")
# #nameメソッドを経由して@nameの内容を取得する
# user.name#=>"Alice"


# 3. メソッドの可視性
class VendingMachine
    def initialize(manufacturer_name)
        @manufacturer_name = manufacturer_name
        @coin = 0
    end

    def press_button
        if @coin >= 100
            @coin -= 100
            "cider"
        else
        ""
        end
    end

    def deposit_coin(amount)
        if amount == 100
            @coin += 100
        end
    end

    private

    def press_manufacturer_name
        @manufacturer_name
    end
end

# サンプルコードの実行
vending_machine = VendingMachine.new('サントリー')

# 100円が足りないので空文字が出力される
puts vending_machine.press_button

# 150円は許可されていないので無視され、100円が足りないので空文字が出力される
vending_machine.deposit_coin(150)
puts vending_machine.press_button

# 100円を追加
vending_machine.deposit_coin(100)
# 100円以上あるので "cider" が出力される
puts vending_machine.press_button

# 非公開メソッドなのでエラーを引き起こす
# puts vending_machine.press_manufacturer_name


# 4. 単一責任の原則
自動販売機クラスを作成
class VendingMachine
    def initialize(manufacturer)
        @manufacturer = manufacturer
        @coin  = 0
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
            @coin  -= item.price
        return item.name
        else
            puts "#{item.name} costs #{item.price} yen. Please deposit more coins."
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

cola = Item.new('cola', 150)
vending_machine = VendingMachine.new('サントリー')

vending_machine.deposit_coin(100)
puts vending_machine.press_button(cola)

vending_machine.deposit_coin(100)
puts vending_machine.press_button(cola)

# 5. 継承
自動販売機クラスを作成
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
            if item.name == "coffee"
                if @cup_num > 0
                    @cup_num -= 1
                else
                    return ""
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
        if name = "cider"
            price = 100
        elsif name = "cola"
            price = 150
        end
        super(name, price)
    end

end

class Cupcoffee< Item
    def initialize(name)
        super(name,100)
        @type = item.type
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
