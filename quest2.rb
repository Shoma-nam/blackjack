#2.QUEST を解く

#iii.[実装力][Level2] コードを書く手順を理解している
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

# メソッドを呼び出す
fizz_buzz

#Ruby で用意されている関係演算子の種類は次の通り。

# 演算子	記述例	  意味
# ==       a == b	bがaに等しい
# !=	   a != b	bがaに等しくない
# >	       a > b	bよりaが大きい
# >=	   a >= b	bよりaが大きいか等しい
# <	       a < b	bよりaが小さい
# <=	   a <= b	bよりaが小さいか等しい






