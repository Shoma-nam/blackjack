#メゾットを定義
def input_number
    number = gets.chomp.to_i
    puts " 好きな数値を入力してください: #{number}"
    puts " 2倍の数値です: #{number * 2}"
end
# メソッドを呼び出す
input_number