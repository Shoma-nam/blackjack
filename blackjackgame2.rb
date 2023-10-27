class Card
    attr_reader :suit, :value
    def initialize
        @suit = SUITS.sample
        @value = VALUES.sample
    end

    def point
        if ['J', 'Q', 'K'].include?(@value)
            10
        elsif @value == 'A'
            1 # or 11, depending on game logic
        else
            @value.to_i
        end
    end
end

# 引数を指定せずにインスタンスを生成
card = Card.new
