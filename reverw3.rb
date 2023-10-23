#iv.[Ruby][Level1] メソッドを自作し使うことができる
#メソッドを自作し使うことができる
#1. Hello World
#"Hello World" と標準出力（画面）に出力する関数 hello を定義してください。

def hello
    puts "Hello World"
end
hello

#正解○


#2. 挨拶
#名前を引数に受け取り、与えられた名前の挨拶メッセージを標準出力（画面）に出力する greeting という関数を書きなさい。
# def greeting(name)
#     name = gets.chomp
#     puts "おはよう、#{name}！"
# end   
# greeting("渡辺")

#不正解✖️
#↓解答
#なぜname = gets.chompを入れた？引数の値が上書きされてしまう

def greeting(name)
    puts "おはよう、#{name}！"
end
greeting("渡辺")

#v.[Ruby][Level1] 変数を宣言し代入することができる
#1. 時間
#秒単位の時間 s を、hⓂ️s の形式へ変換して出力してください。ここで、h は時間、m は 60 未満の分、s は 60 未満の秒とします。
def time(s)
    hours = s / 3600
    minutes = (s / 60) % 60 
    secounds = s % 60
    puts"#{hours}:#{minutes}:#{secounds}"
end
time(4210)

#正解○
#引数の範囲指定は必要？

#vi.[Ruby][Level1] 条件分岐を使うことができる
#条件分岐を使うことができる
#1. 比較
#2つの整数 x, y の大小を比較し、xとyの大小関係を出力する関数 greater を定義してください。
def greater(x, y)
    #xよりyが大きければ「x > y」
    if x > y 
        puts"x > y"
    # xよりyが小さければ「x < y」
    elsif x < y 
        puts"x < y"
    #xとyの値が同じなら「x == y」
    else x == y
        puts"x == y"
    end
end
greater(5, 4)
greater(-50, -40)
greater(10, 10)

#正解○
#下記条件式は必要？
#if -100 <= x && x <= 100 && -100 <= y && y <= 100
#end

#2. 電車の料金
#東京駅から新宿駅までJR山手線に乗って移動します。
#12歳以上は大人料金で200円、6歳以上12歳未満はこども料金で100円、6歳未満は幼児で無料となります。
#年齢に応じて東京駅から新宿駅までの料金を出力する関数 train_fare を定義してください。
def train_fare(age)
    if age >= 12
        puts 200
    elsif age >= 6 && age <= 12
        puts 100
    else age < 6
        puts"free"
    end
end
train_fare(12)
train_fare(6)
train_fare(5)

#正解○
#年齢の範囲の条件式は必要？0 <= age <= 150

#3. XOR
#2つのブーリアン値 x と y が与えられ、x と y のうちどちらかが真なら true を出力し、両方真もしくは両方偽なら false を出力する関数 xor を定義してください。
# def xor(x, y)
#     if x == true && y == false
#         puts"true"
#     elsif x == false && y == true
#         puts"true"
#     elsif  x == true && y == true 
#         puts"false"
#     else x == false && y == false
#         puts"false"
#     end
# end
# xor(true, true)
# xor(true, false)
# xor(false, true)
# xor(false, false)

#一応動くため、正解◯
#下記コードがシンプル

##解答
def xor(x, y)
    if x != y
        puts "true"
    else
        puts "false"
    end
end
xor(true, true)   
xor(true, false)  
xor(false, true)  
xor(false, false) 

#vii.[Ruby][Level1] 繰り返し処理を行うことができる

