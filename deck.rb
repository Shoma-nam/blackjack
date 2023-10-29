require_relative ('card')

SUITS = ['ハート', 'ダイヤ', 'クローバー', 'スペード']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']


class Deck
    attr_reader :cards

    def initialize
        @cards = []
        initialize_deck
        shuffle_deck
    end

    # デッキの初期化
    def initialize_deck
        SUITS.each do |suit|
            VALUES.each do |value|
                @cards <<  Card.new(suit, value)
            end
        end
    end

    # デッキのシャッフル
    def shuffle_deck
        @cards.shuffle!
    end
end