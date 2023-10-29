# Player クラスは、プレイヤー（実行者）の振る舞いを管理するためのクラスです。

# プロパティ
# 手札（プレイヤーが引いたカードのリスト）を管理するためのインスタンス変数が必要です。
# メソッド
# initialize メソッド: プレイヤーの手札を初期化するために、空の手札リストを作成します。
# draw_card(card) メソッド: カードを引いた際に手札に加えるためのメソッドです。
# total_score メソッド: 現在の手札の合計スコアを計算します。Aの取り扱いに注意して計算します。

class Player
    attr_reader :suit, :value
    def initialize
        @hand = Hand.new
    end

    def initialize_hand(card1,card2)
        @hand.add_card(card1)
        puts "あなたの引いたカードは#{card1.suit}の#{card1.value}です。"
        @hand.add_card(card2)
        puts "あなたの引いたカードは#{card2.suit}の#{card2.value}です。"
    end

    #手札にカードを追加
    def draw_card(card)
        @hand.add_card(card)
        puts "あなたの引いたカードは#{card.suit}の#{card.value}です。"
    end
    # 現在の手札の合計スコアを計算
    def total_score
        @hand.calculate_points
    end

    # 手札を表示
    def display_hand
        puts "あなたの手札: #{hand.display_hand}"
    end
end
