input_number = gets.chomp.to_i
puts "好きな数値を入力してください：#{input_number}"
puts"2倍の数値です:#{input_number * 2}"

#数字を1から100まで順番に出力する
#3かつ5の倍数の時「FizzBuzz」と出力する
#3の倍数の時「Fizz」と出力する
5の倍数の時「Buzz」と出力する
def fizz_buzz:
    # 適当な処理を記載する

    count = 

    while  count += 1
        if count % 3 == 0 && count % 5 != 0
            puts "Fizz"
        end

        elsif count % 5 == 0 && count % 3 != 0
            puts "Buzz"
        end

        elsif count % 15 == 0
            puts "FizzBuzz"
        end
        else
        count += 1
        end
end
fizz_buzz

def hello
    puts "Hello World"
end
hello

def greeting(name)
    puts "おはよう、#{name}！"
end

greeting("渡辺")

def time(s)
        hours = s / 3600
        minutes = (s % 3600) / 60
        secounds = s % 60   

        puts "#{hours}:#{minutes}:#{secounds}"
end
time(4210)

def greater(x, y)
    #xよりyが大きければ「x > y」 xよりyが小さければ「x < y」 xとyの値が同じなら「x == y」
    number1 = x
    number2 = y
    if -100 <= number1 && number2 <= 100
        if number1 > number2
            puts "x > y"
        elsif number1 < number2
            puts "x < y"
        else number1 == number2
            puts "x == y"
        end
    end
end
greater(5, 4)
greater(-50, -40)
greater(10, 10)
