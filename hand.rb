class Hand
    attr_reader :cards

    def initialize
        @cards = []
    end

    # 手札にカードを追加
    def add_card(card)
        @cards << card
    end

    # 手札の合計ポイントを計算
    def calculate_points
        points = 0
        num_aces = 0

        @cards.each do |card|
        if ['J', 'Q', 'K'].include?(card.value)
            points += 10
        elsif card.value == 'A'
            points += 11
            num_aces += 1
        else
            points += card.value.to_i
        end
    end

        # Aの処理（ポイントが21を超える場合に1に変更）
        while points > 21 && num_aces > 0
            points -= 10
            num_aces -= 1
        end

        points
    end

    # 手札の表示
    def display_hand
        hand_str = @cards.map { |card| "#{card.suit}の#{card.value}" }.join(', ')
        "手札: #{hand_str} (合計ポイント: #{calculate_points})"
    end
end
