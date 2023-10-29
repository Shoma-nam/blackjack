require_relative ('card')
require_relative ('deck')
require_relative ('player')
require_relative ('dealer')

# 引数を指定せずにインスタンスを生成
deck = Deck.new
puts deck.cards
deck.initialize_deck
deck.shuffle_deck
puts deck.cards