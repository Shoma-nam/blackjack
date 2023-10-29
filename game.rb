# frozen_string_literal: true

require_relative "deck"
require_relative "player"
require_relative "dealer"

class Game
  def start
    puts "ブラックジャックを開始します."

    deck = Deck.new
    player = Player.new
    dealer = Dealer.new

    # カードを配る
    2.times do
      player.draw_card(deck)
      dealer.draw_card(deck)
    end

    display_initial_hands(player, dealer)

    # ゲームの進行
    player_turn(player, deck)
    dealer_turn(dealer, deck) if player.hand.calculate_points <= 21
    determine_winner(player, dealer)

    puts "ブラックジャックを終了します."
  end

  def display_initial_hands(player, dealer)
    puts "あなたの引いたカードは#{player.hand.hand_cards[0].suit}の#{player.hand.hand_cards[0].value}です."
    puts "あなたの引いたカードは#{player.hand.hand_cards[1].suit}の#{player.hand.hand_cards[1].value}です."
    puts "ディーラーの引いたカードは#{dealer.hand.hand_cards[0].suit}の#{dealer.hand.hand_cards[0].value}です."
    puts "ディーラーの引いた2枚目のカードはわかりません."
  end

  def player_turn(player, deck)
    while player.hand.calculate_points <= 21
      # player.display_hand
      puts "あなたの現在の得点は#{player.hand.calculate_points}です。カードを引きますか？（Y/N）"
      choice = gets.chomp.upcase
      break if choice != "Y"

      card = player.draw_card(deck)
      puts "あなたの引いたカードは#{card.suit}の#{card.value}です。"
    end
  end

  def dealer_turn(dealer, deck)
    dealer.open_second_card
    while dealer.hand.calculate_points < 17
      card = dealer.draw_card(deck)
      puts "ディーラーの引いたカードは#{card.suit}の#{card.value}です。"
    end
  end

  def determine_winner(player, dealer)
    player_score = player.hand.calculate_points
    dealer_score = dealer.hand.calculate_points

    puts "あなたの得点は#{player_score}です。"
    puts "ディーラーの得点は#{dealer_score}です。"

    if player_score > 21 || (dealer_score <= 21 && dealer_score >= player_score)
      puts "ディーラーの勝ちです！"
    else
      puts "あなたの勝ちです！"
    end
  end
end

game = Game.new
game.start
