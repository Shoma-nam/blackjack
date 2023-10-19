#paiza D問題挑戦 10/18(水)
#①
def count(n)
    if 1<=n && n<=10 
        puts n * 25 *24
    else
        puts"1 ≦ n ≦ 10の条件を満たしていません"
    end
end
count(3)
count(1)

#②
n = gets.to_i

if 1 <= n && n <= 10
    puts n * 25 * 24
else
    puts "1 ≦ n ≦ 10の条件を満たしていません"
end


#③
#自分のコード↓
def discount(num)
  if  num >= 1000
      dis_num = num - 100
      puts dis_num
  else
      num < 1000
      puts num
  end
end
discount(1050)
discount(999)
#冗長なコードになっている

#解答↓
p = gets.to_i

# 割引の適用判定と出力
if p >= 1000
    puts p - 100
else
    puts p
end

