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


#条件分岐を使うことができる
#1. 比較
#2つの整数 x, y の大小を比較し、xとyの大小関係を出力する関数 greater を定義してください。
def greater(x, y)

    #引数x,yをそれぞれ変数に代入
    number1 = x
    number2 = y

    
    if -100 <= x && x <= 100 && -100 <= y && y <= 100
        #xよりyが大きければ「x < y」 
        if number1 < number2 then
            puts "x < y"
        elsif number1 > number2
        #xよりyが小さければ「x > y」 
            puts "x > y"
        else
        #xとyの値が同じなら「x == y」
            puts "x == y"
        end
    end
end
greater(5, 4)
greater(-50, -40)
greater(10, 10)