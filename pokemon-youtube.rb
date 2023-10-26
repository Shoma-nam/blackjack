#山浦さんオブジェクト指向Youtube動画
#ポケモンのポーカーゲームをオブジェクト指向を使って実装する演習問題
#演習問題

#ポケモンのコンソールゲームを作成しましょう。
#以下の要件を満たすように実装してください。

#-二匹のポケモンがバトルします
#-それぞれのポケモンにはHP(体力)があり、また攻撃を一つ持っています
#-各ターンではそれぞれのポケモンが相手に対して攻撃を行います。攻撃を受けるとダメージをもらい、HPが減ります。
#-攻撃する順番は適当に決めてください
#-先に相手のHPを０にしたポケモンが勝ちです。

#-具体的にはプログラムを実行すると以下のように動作します。

#bash
#ピカチュウがあらわれた。ピカチュウのHPは20だ。
#ヒトカゲが現れた。ヒトカゲのHPは20だ。
#ピカチュウのこうげき!10万ボルト!ヒトカゲは10ダメージをもらった。ヒトカゲのHPは8だ。
#ヒトカゲのこうげき！ひのこ!ピカチュウは5ダメージをもらった。ピカチュウのHPは15だ。
#ピカチュウのこうげき！10万ボルト!ヒトカゲは10ダメージをもらった。ヒトカゲのHPは0だ。
#ヒトカゲはたおれた。ピカチュウのかち!

#↓自分のコード
class Pokemon
    attr_accessor :name, :hp, :atk

    def initialize
        @name = name
        @hp = hp
        @atk = atk
    end

    def attack_pikachu
        puts "#{@name}のこうげき！10万ボルト!"
    end
    def attack_hitokage
        puts "#{@name}のこうげき！ひのこ!"
    end
end

class Game
    def battle(pokemon1,pokemon2)
        puts "#{pokemon1.name}があらわれた！#{pokemon1.name}のHPは#{pokemon1.hp}だ！"
        puts "#{pokemon2.name}があらわれた！#{pokemon2.name}のHPは#{pokemon2.hp}だ！"
        pokemon1.attack()
        pokemon2.attack()
    end
end

class Pikachu < Pokemon
    def initialize()
        super(name,hp,atk)
    end
    def attack_message
        puts"10万ボルト"
    end
end

class Hitokage < Pokemon
    def initialize()
        super(name,hp,atk)
    end
    def attack_message
        puts"ひのこ"
    end

end

game = Game.new
pokemon = Pokemon.new
pikachu = Pikachu.new("ピカチュウ",20,10)
hitokage = Hitokage.new("ヒトカゲ",18,5)
game.battle("ピカチュウ","ヒトカゲ")



#オブジェクト指向とは

#　-「変更に対処しやすくするためのソフトウェアの開発手法」であり、そのgit右舷のためにオブジェクトに責務を任せる手法
#　-　小学生の遠足
    #　-　先生が全部指示：大変。最初のコード
    #　-　駅の行き先は生徒にお任せ：楽。オブジェクト指向
##　継承

# - 親クラスの変数やメソッドを小クラスが受け継ぐ
## ポリモーフィズム
    # - 多様性
    # - 同じメソッドを読んでもインスタンスによって違う振る舞いをする
##　カプセル化

# - システムを完全に管理するためのもの
# - 外部から直接参照されたり変更されたくないものに対してアンダースコアをつけることで外部から謝って変更されるミスを防ぐことを、隠蔽
# - あらゆるものを隠蔽化して、外部からアクセスできるのは必要最小限にする。システムが安全になる
# - あらゆるものを隠蔽化することを「カプセル化」