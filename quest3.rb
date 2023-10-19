#iv.[Ruby][Level1] メソッドを自作し使うことができる
#メソッドを自作し使うことができる


#1.Hello World

#問題
#"Hello World" と標準出力（画面）に出力する関数 hello を定義してください
def hello
    puts "Hello World"
end
hello


#2.挨拶

#問題
#名前を引数に受け取り、与えられた名前の挨拶メッセージを標準出力（画面）に出力する greeting という関数を書きなさい。
def greeting(name)
    puts "おはよう、#{name}！"
end
greeting("渡辺")


#v.[Ruby][Level1] 変数を宣言し代入することができる
#変数を宣言し代入することができる



#1.時間
#問題
#秒単位の時間 s を、hⓂ️s の形式へ変換して出力してください。ここで、h は時間、m は 60 未満の分、s は 60 未満の秒とします。

#自分のコード↓
#     #引数の範囲
#     0 ≤ s  && s< 86400

# def time(s)


#     #時間を区切る
#     hours = s / (60 * 60)
#     #分を区切る
#     minutes = s % 
#     #秒を区切る
#     secounds =  s % 60

#     puts"#{hours}:#{minutes}:#{secounds}:"

# end
# time(4210)

#問題点
#引数の範囲をif分に入れていない。引数範囲外の場合の処理が組み込まれていない。
#区切る条件を理解していない。コードを理解していないというより数学の問題。自分の頭が悪い

#回答
def time(s)
    # 時間、分、秒を計算
    hours = s / 3600
    minutes = (s % 3600) / 60
    seconds = s % 60
  
    # フォーマットして出力
    puts "#{hours}:#{minutes}:#{seconds}"
  end
  
  # サンプル呼び出し
  time(4210)

#vi.[Ruby][Level1] 条件分岐を使うことができる
#条件分岐を使うことができる

#1. 比較
#2つの整数 x, y の大小を比較し、xとyの大小関係を出力する関数 greater を定義してください。

#自分のコード↓
def greater(x, y)
    if -100 <= x && x <= 100 && -100 <= y && y <= 100
        # xよりyが大きければ「x < y」 
        if x < y
            puts "x < y"
        elsif x > y
            # xよりyが小さければ「x > y」 
            puts "x > y"
        else
            # xとyの値が同じなら「x == y」
            puts "x == y"
        end
    end
end

greater(5, 4)    # x > y と出力される
greater(-50, -40) # x < y と出力される
greater(10, 10)   # x == y と出力される


#2. 電車の料金
#東京駅から新宿駅までJR山手線に乗って移動します。
#12歳以上は大人料金で200円、6歳以上12歳未満はこども料金で100円、6歳未満は幼児で無料となります。
#年齢に応じて東京駅から新宿駅までの料金を出力する関数 train_fare を定義してください。

#自分のコード↓
# def train_fare(age)
#     if 0 <= age && age <= 150
#         if 12 <= age
#             puts 200
#         elsif  6 <= age && age<= 12
#             puts 100
#         else age <= 6
#             puts "無料"
#         end
#     end
# end
# train_fare(12)
# train_fare(6)
# train_fare(5)

#解答
def train_fare(age)
    if age >= 12
        puts 200
    elsif age >= 6 && age < 12
        puts 100
    elsif age < 6
        puts "無料"
    else
        puts "不正な年齢が入力されました"
    end
end

train_fare(12)  # 200
train_fare(6)   # 100
train_fare(5)   # 無料



#3. XOR
#2つのブーリアン値 x と y が与えられ、x と y のうちどちらかが真なら true を出力し、
#両方真もしくは両方偽なら false を出力する関数 xor を定義してください。

#自分のコード↓
# def xor(x, y)
#     #x と y のうちどちらかが真なら true を出力
#     if x or y == true
#         puts "true"
#     else x and y == true && x and y == false
#         puts "false"
#     end
# end
# xor(true, true)
# xor(true, false)
# xor(false, true)
# xor(false, false)

#回答
def xor(x, y)
    if x != y
        puts "true"
    else
        puts "false"
    end
end

xor(true, true)   # false
xor(true, false)  # true
xor(false, true)  # true
xor(false, false) # false



#vii.[Ruby][Level1] 繰り返し処理を行うことができる
#繰り返し処理

#1. 挨拶
#100回 "こんにちは！" と出力する関数 hello を定義してください。

#自分のコード↓
def hello(word)
    count = 1
    while count <= 100 do 
        puts "#{word}"
        count += 1
    end 
end
hello("こんにちは")

#2. 羊
#あなたは眠れなくなったので羊の数を数えることにしました。羊の数 n が与えられ
#羊が1匹 羊が2匹 羊が3匹 ...と、n 回羊の数えを出力する関数 sheep を定義してください。

#自分のコード↓
def sheep(n)
    count = 1
    while count <= n do
        puts "羊が#{count}匹"
        count += 1
    end
end

#3. 総和
#1 から 100 までの足し算の結果を出力する関数 sum_1_100 を定義してください。

#自分のコード↓
# def sum_1_100(count)
#     count =  1
#     sum = 0
#     while count <= 100 do
#         sum = sum + count
#         puts sum
#         count += 1
#     end
# end
# sum_1_100(100)

#解答
def sum_1_100
    sum = 0
    (1..100).each do |i|
      sum += i
    end
    puts sum
end
sum_1_100() 


#4. 総和
#2つの整数 x と y が与えられ、x から y までの足し算の結果を出力する関数 sum を定義してください。

#自分のコード↓
def sum(x, y)
    #整数範囲
    if 1 <= x && x<= 100 && 1 <= y && y<= 100
        #xからyまでの数値を合計する
        sum = 0
        (x..y).each do |i|
          sum += i
        end 
        puts sum
    end
end
sum(10, 80)

#解答
def sum(x, y)
    # 数値の範囲の検証
    if 1 <= x && x <= 100 && 1 <= y && y <= 100 && x <= y
        # x から y までの総和を計算
        total = 0
        (x..y).each do |i|
          total += i
        end
        puts total
    else
        puts "数値が範囲外です"
    end
end

sum(10, 80)  # サンプルの呼び出し

#5. フィボナッチ数列(advanced)
#家のお手伝いを毎日継続すると、継続日数 n 日に応じて、その日にもらえるお小遣いの金額が増えていきます。
#お小遣いの金額は以下の条件に従ってもらうことができます。
#f(0) = 0 円 f(1) = 1 円 f(n) = f(n-1) + f(n-2) 円 (n ≧ 2)
#整数 n に対して、n 日間お手伝いを継続した時のお小遣いの金額を算出する関数 fibonacci を定義してください。

#自分のコード↓
# def fibonacci(n)
#     while

#     end
# end
# fibonacci(0)
# fibonacci(1)
# fibonacci(2)
# fibonacci(3)
# fibonacci(4)
# fibonacci(7)
# fibonacci(30)

#挫折
def fibonacci(n)
    # nが0または1のとき、そのままの値を返す
    return n if n <= 1

    # nが2以上のときの初期値
    a, b = 0, 1

    # n番目のフィボナッチ数を計算
    (2..n).each do
        a, b = b, a + b
    end

    # 計算されたフィボナッチ数を返す
    return b
end

puts fibonacci(0)  # => 0
puts fibonacci(1)  # => 1
puts fibonacci(2)  # => 1
puts fibonacci(3)  # => 2
puts fibonacci(4)  # => 3
puts fibonacci(7)  # => 13
puts fibonacci(30) # => 832040







