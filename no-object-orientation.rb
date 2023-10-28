#ステップ1
#ディーラーとプレイヤーの2人で対戦するコンソールゲームを作成しましょう。以下のルールの元、コンソール（ターミナル）上で動作するようにします。

# ブラックジャックを開始します。
# あなたの引いたカードはハートの7です。
# あなたの引いたカードはクラブの8です。
# ディーラーの引いたカードはダイヤのQです。
# ディーラーの引いた2枚目のカードはわかりません。
# あなたの現在の得点は15です。カードを引きますか？（Y/N）
# Y
# あなたの引いたカードはスペードの５です。
# あなたの現在の得点は20です。カードを引きますか？（Y/N）
# N
# ディーラーの引いた2枚目のカードはダイヤの2でした。
# ディーラーの現在の得点は12です。
# ディーラーの引いたカードはハートのKです。
# あなたの得点は20です。
# ディーラーの得点は22です。
# あなたの勝ちです！
# ブラックジャックを終了します。

#素のRuby
SUITS = ['ハート', 'ダイヤ', 'クローバー', 'スペード']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def draw_card
    { suit: SUITS.sample, value: VALUES.sample }
end

def display_card(card)
    "#{card[:suit]}の#{card[:value]}"
end

def calculate_score(cards)
    score = 0
    cards.each do |card|
        if ['J', 'Q', 'K'].include?(card[:value])
            score += 10
        elsif card[:value] == 'A'
            score += 11
    else
    score += card[:value].to_i
    end
end

# Aの値を1として処理する場合
cards.select { |card| card[:value] == 'A' }.count.times do
    break if score <= 21
    score -= 10
end

score
end

puts "ブラックジャックを開始します。"

player_cards = []
2.times do
    card = draw_card
    puts "あなたの引いたカードは#{display_card(card)}です。"
    player_cards << card
end

dealer_cards = [draw_card]
puts "ディーラーの引いたカードは#{display_card(dealer_cards.first)}です。"
dealer_cards << draw_card
puts "ディーラーの引いた2枚目のカードはわかりません。"

loop do
    puts "あなたの現在の得点は#{calculate_score(player_cards)}です。カードを引きますか？（Y/N）"
    break if gets.chomp.upcase == 'N'

        card = draw_card
    puts "あなたの引いたカードは#{display_card(card)}です。"
    player_cards << card

    if calculate_score(player_cards) > 21
    puts "あなたの得点は#{calculate_score(player_cards)}です。"
    puts "ディーラーの勝ちです！"
    exit
    end
end

puts "ディーラーの引いた2枚目のカードは#{display_card(dealer_cards.last)}でした。"
while calculate_score(dealer_cards) < 17
    card = draw_card
    puts "ディーラーの引いたカードは#{display_card(card)}です。"
    dealer_cards << card
end

puts "あなたの得点は#{calculate_score(player_cards)}です。"
puts "ディーラーの得点は#{calculate_score(dealer_cards)}です。"
if calculate_score(player_cards) > calculate_score(dealer_cards) || calculate_score(dealer_cards) > 21
    puts "あなたの勝ちです！"
else
    puts "ディーラーの勝ちです！"
end

puts "ブラックジャックを終了します。"




