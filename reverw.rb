number = gets.chomp_i
puts "好きな数値を入力してください：#{number}"
puts"2倍の数値です：#{number * 2}"

#メソッド定義ができていない
#数値の受け取りができていない。正：gets.chomp.to_i


def count
    count = 1

    while count do 
        if count % 3== 0 and count % 5 != 0
            puts "Fizz"
        end
        elsif count % 5== 0 and count % 3 != 0
            puts "Buzz"
        end
        else count % 15== 0 
        puts "Buzz"

        end
    end
end
count
#数字を1から100まで順番に出力する
#3かつ5の倍数の時「FizzBuzz」と出力する
#3の倍数の時「Fizz」と出力する
#5の倍数の時「Buzz」と出力する