SUITS = ['ハート', 'ダイヤ', 'クローバー', 'スペード']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

class Card
    attr_reader :suit, :value
    def initialize(suit,value)
        @suit = suit
        @value = value
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