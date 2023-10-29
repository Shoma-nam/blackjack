class Dealer
    attr_reader :hand

    def initialize
        @hand = Hand.new
    end

    def draw_card(card)
        @hand.add_card(card)
    end

    # ディーラーの自動カード引きロジック
    def auto_draw(deck)
        while hand.total_score < 17
            card = deck.draw
            draw_card(card)
        puts "ディーラーの引いたカードは#{card.suit}の#{card.value}です。"
        end
    end

    # ディーラーの2枚目のカードをオープン
    def open_second_card
        hand.cards[1].reveal
    end

    # ディーラーの手札を表示
    def display_hand
        puts "ディーラーの手札: #{hand.display_hand}"
    end
end

# ゲームの進行例
# Deck を初期化
deck = Deck.new

# プレイヤーとディーラーを作成
player = Player.new
dealer = Dealer.new

# プレイヤーとディーラーが2枚ずつカードを引く
player.draw_card(deck)
dealer.draw_card(deck)
player.draw_card(deck)
dealer.draw_card(deck)

# プレイヤーの手札とディーラーの手札を表示
puts "プレイヤー: #{player.display_hand}"
puts "ディーラー: #{dealer.display_hand(false)}"

# ゲームの進行や勝敗の判定を追加していくことができます。