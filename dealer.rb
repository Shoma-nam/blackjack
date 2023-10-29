class Dealer
    attr_reader :suit, :value
    def initialize
        @hand = Hand.new

    end
    def draw_card(card)
        @hand.add_card(card)
    end

end