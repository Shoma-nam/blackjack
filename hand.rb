# frozen_string_literal: true

class Hand
  attr_reader :hand_cards

  def initialize
    @hand_cards = []
  end

  def add_card(card)
    @hand_cards << card
  end

  def calculate_points
    points = 0
    num_aces = 0

    @hand_cards.each do |card|
      if ["J", "Q", "K"].include?(card.value)
        points += 10
      elsif card.value == "A"
        points += 11
        num_aces += 1
      else
        points += card.value.to_i
      end
    end

    while points > 21 && num_aces > 0
      points -= 10
      num_aces -= 1
    end

    points
  end

  def display_hand
    hand_str = @hand_cards.map { |card| "#{card.suit}の#{card.value}" }.join(", ")
    "手札: #{hand_str} (合計ポイント: #{calculate_points})"
  end
end
