#復習のため、何も見ずに自力で書く
#ii.[実装力][Level1] コードを手元で動かすことができる
number = gets.chomp.to_i
puts "好きな数値を入力してください： #{number}"
puts "2倍の数値です：#{number * 2}"

#正解○

# iii.[実装力][Level2] コードを書く手順を理解している
def fizz_buzz(outputnumber)
    # 数字を1から100まで順番に出力する
    outputnumber = 1
    while outputnumber <= 100 do
        #3の倍数の時「Fizz」と出力する
        if outputnumber % 3 == 0 && outputnumber % 5 != 0
            puts "Fizz"
        #5の倍数の時「Buzz」と出力する
        elsif outputnumber % 5 == 0 && outputnumber % 3 != 0
            puts "Buzz"
        #3かつ5の倍数の時「FizzBuzz」と出力する
        elsif outputnumber % 15 == 0 
            puts "FizzBuzz"
        else
            puts outputnumber
        end 

        outputnumber += 1
    end
end

fizz_buzz(outputnumber)

#不正解✖️
#↓解答
def fizz_buzz
    # 数字を1から100まで順番に繰り返す
    count = 1

    while count <= 100 do
        # もし3の倍数の時「Fizz」を表示
        #15の倍数も含まれるため、５の倍数は除く
        if count % 3 == 0 && count % 5 != 0
            puts "Fizz"
        # もし5の倍数の時「Buzz」を表示
        #15の倍数も含まれるため、3の倍数は除く
        elsif count % 5 == 0 && count % 3 != 0
            puts "Buzz"
        # もし3かつ5の倍数の時「FizzBuzz」を表示
        elsif count % 15 == 0
            puts "FizzBuzz"
        # それ以外の場合、数字を表示
        else
            puts count
        end

        count += 1
    end
end

# # メソッドを呼び出す
# fizz_buzz

#修正箇所
#1.引数を取る必要はない　なぜ入れた？→何も考えずに書いていた
#2.それ以外のコードは○
