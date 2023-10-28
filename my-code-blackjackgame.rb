#↓自分で考えたコード
#カードのスート（ハート、ダイヤ、クラブ、スペード）と値（2、3、4、...、10、J、Q、K、A）を持つクラス。
#カードの値が10以上の場合、10として計算されることに注意。
class CardSuits
    SUITS = ['ハート', 'ダイヤ', 'クローバー', 'スペード']

    def initialize
    # カードのスートを初期化
    end
end

class CardNumber
    VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
    def initialize
    # カードの数字を初期化
    end
end

#カードのデッキを管理するクラス。
#Card オブジェクトを生成し、シャッフルしたデッキを作成する役割。
class Deck
end


#プレイヤー（実行者）のクラス。
#プレイヤーのカードを管理し、カードを引く動作を処理。
class Player
end

#ディーラー（CPU）のクラス。
#ディーラーのカードを管理し、ルールに従ってカードを引く動作を処理。
class Dealer
end

#ゲームの進行を管理するクラス。
#ゲームの開始、進行、終了を処理し、勝敗の判定を行う。
class BlackjackGame
end

puts"ブラックジャックを開始します"

card_suits = CardSuits.new
card_number = CardNumber.new

#↑
#CardSuits および CardNumber クラスは、カードのスートと値を管理する必要があるため、
#インスタンス変数を使ってこれらの情報を保持する必要があります。
#また、initialize メソッドで初期化する必要はありません。