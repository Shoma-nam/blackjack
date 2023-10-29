# frozen_string_literal: true

require_relative "hand"

class Dealer
  attr_reader :hand

  def initialize
    @hand = Hand.new
  end

  def draw_card(deck)
    card = deck.draw
    @hand.add_card(card)
    card
  end

  def open_second_card
    puts "ディーラーの引いた2枚目のカードは#{@hand.hand_cards[1].suit}の#{@hand.hand_cards[1].value}でした。"
  end

  def dealer_turn(deck)
    open_second_card
    while hand.calculate_points < 17
      card = draw_card(deck)
      puts "ディーラーの引いたカードは#{card.suit}の#{card.value}です。"
    end
  end

  # ディーラーの手札を表示
  def display_hand
    puts "ディーラーの手札: #{hand.display_hand}"
  end
end
