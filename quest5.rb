#チェリー本 オブジェクト指向学習

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

# 自動販売機クラスを作成
class VendingMachine
    def initialize(manufacturer)
        @manufacturer = manufacturer
        @balance = 0
    end
    def deposit_coin(coin)
        if coin == 100 || coin == 150
            @balance += coin
        else
            puts "Only 100 yen and 150 yen coins are accepted."
    end
end

    def press_button(item)
        if @balance >= item.price
            @balance -= item.price
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
