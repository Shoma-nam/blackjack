# frozen_string_literal: true

require_relative "hand"

class Player
  attr_reader :hand

  def initialize
    @hand = Hand.new
  end

  def draw_card(deck)
    card = deck.draw
    @hand.add_card(card)
    card
  end
  def display_hand
    @hand.display_hand
  end
end
