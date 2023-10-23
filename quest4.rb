#viii.[Ruby][Level2] ブロックを使った配列の処理ができる(advanced)

#1. each
#従業員の名前がID順に配列で渡されるので、IDと従業員の名前をセットにして出力する print_names 関数を定義してください。
#なお、each メソッドと with_index メソッドを使うようにしてください。

#自分のコード↓
# def print_names(names)
#     names = ['上田', '田仲', '堀田']
#     names.each_with_index(1) do |name, i|
#     puts"#{i}.#{name}"

# end
# print_names(['上田', '田仲', '堀田'])

#解答
def print_names(names)
    names.each.with_index(1) do |name, i|
        puts "#{i}. #{name}"
    end
end

print_names(['上田', '田仲', '堀田'])

#2. map
#与えられた整数の配列の要素を2乗した配列を返す square 関数を定義してください。
#なお、map メソッドを使うようにしてください。

#勉強不足。map関数の理解が必要。↓解答
def square(numbers)
    numbers.map { |n| n ** 2 }
end
squared_numbers = square([5, 7, 10])
print squared_numbers

#3. select
#整数の配列から偶数を抽出した配列を返す関数 select_even_numbers を作成してください。
#なお、select メソッドを使うようにしてください。

#参考書のコードを参考。selectを初めて学習。
def select_even_numbers(numbers)
    even_numbers = numbers.select { |n|n.even? }
end
even_numbers = select_even_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
print even_numbers

#iv.[Ruby][Level2] ハッシュを使うことができる(advanced)
#ハッシュを使うことができる
#1. ハッシュ

#①ハッシュと配列は何が違うのか

#複数の値をまとめて管理する方法として、配列とハッシュがある。
#配列は複数の値を並べて管理するのに対して、ハッシュはそれぞれの値にキーと呼ばれる名前をつけて管理する。
#例：配列・・・順序を持つ要素のコレクション　[値1,値2]　
#例：ハッシュ・・・キーと値のペアのコレクション。　{キー1 => 値1,キー2 => 値2}

#②ハッシュと配列はそれぞれどのような用途に向いているのか

#ハッシュは「キー」に基づいてデータを管理・アクセスするのに向いており、配列は順序や位置に基づいてデータを管理・アクセスするのに向いています。
#ハッシュの用途↓
#一意のキーに関連付けられたデータを保存・取得する際に使用。
#キーを基にデータを検索する際に高速。
#辞書や設定情報、属性値のようなものを表現するのに適している.


#配列の用途↓
#順番に関連したデータを保存・取得する場面で使用。
#インデックス（位置）を基にデータをアクセスする際に便利。
#リストやシーケンスなどの順序付きのデータを表現するのに適している。


#2. 首都
#国名と首都名が組み合わせになったハッシュに対して、"#{国名}の首都は#{首都名}です"と出力する関数 print_capitals を作成してください。

#自分のコード↓
def print_capitals(capitals)
    capitals = { country1 => capital1, country2 => capital2}
    puts "#{capitals["country1"]}の首都は#{capitals["capital1"]}です"
end
print_capitals({ '日本' => '東京', 'アメリカ' => 'ワシントンD.C.' })

#解答
def print_capitals(capitals)
    # eachメソッドを使用して、ハッシュの各キーと値のペアにアクセス
    capitals.each do |country, capital|
      # 出力のフォーマットを指定して、国名と首都名を表示
      puts "#{country}の首都は#{capital}です"
    end
end
print_capitals({ '日本' => '東京', 'アメリカ' => 'ワシントンD.C.' })

#シンボルを使うことができる
#1. シンボル

#シンボルとは何か
#シンボルはRubyのデータ型の一つで、イミュータブル（変更不可能）なオブジェクトとして定義される
#:symbol_name のようにコロンの後に名前を付けて表現される。

#文字列と何が違うのか
#イミュータブル性: シンボルは変更不可能ですが、文字列は変更可能。
#オブジェクトID: 同じシンボルは常に同じオブジェクトIDを持つ
#新しい文字列を作るたびに異なるオブジェクトIDが割り当てられる。これは、シンボルがメモリ上で一度しか作成されないため。
#パフォーマンス: シンボルの比較はオブジェクトIDの比較となるため、文字列の比較よりも高速。

#シンボルがよく使われるのはどのような用途か
#1.ハッシュのキー: メモリ効率と高速な比較のため、ハッシュのキーとしてシンボルを使用することが一般的.
#2.定数や識別子: シンボルは一意性が保証されるので、特定の定数や識別子を表すのに適する。
#3.メソッド名の参照: sendやdefine_methodなどのメタプログラミング技法でメソッド名を参照する際にシンボルを使用することが一般的.
#Enumの代わり: Rubyには組み込みのEnumがないが、シンボルを使って独自のEnumのような構造を作ることができる。

#2. 両替
#引数として金額、変換元の通貨、変換先の通貨を受け取り、変換後の金額を出力する両替関数を作成します。
#まず、米ドル（USD）に対するさまざまな通貨の換算率を格納した conversion_rates というハッシュを作成してください。
#キーに通貨名をシンボルで指定し、値には通貨の換算率を数値で格納してください。
#次に、金額、変換元の通貨、変換先の通貨、返還率を受け取り、変換後の金額を出力する convert_currency 関数を作成してください。


def convert_currency(amount, source_currency, target_currency, conversion_rates)
    #今回の場合、金額=100,交換元の通貨=:used,交換先の通貨=:jpy 
    #計算式は100ドル÷1ドル✖️110円(/ドル)
    conversion_rates = convert_currency[:jpy] / convert_currency[:usd]
    amount * (convert_currency[:jpy] / convert_currency[:usd])
end
end
conversion_rates = {
  usd: 1.0,
  jpy: 110.0,
  eur: 0.8
}
convert_currency(100, :usd, :jpy, conversion_rates)

#?勉強不足。手が止まる



#xi.[Ruby][Level2] オブジェクト指向が何かを説明できる
#オブジェクト指向が何かを説明できる
#1. オブジェクト指向の目的
#↓
#オブジェクト指向プログラミングは、プログラムをより構造化され、管理しやすくし、現実の問題に対処するための強力なツール。
#初心者にとっても、問題の分解やモデル化を通じてコードを理解しやすくし、コードの再利用と保守性を向上させる手段として役立つ。

#オブジェクト指向のメリット
#・効率よくプログラムを設計・開発できる
#・不具合の原因を特定しやすくなる
#・プログラムの仕様が変わっても簡単に対応できる

#2. カプセル化
#オブジェクト指向におけるカプセル化とはどのような概念か、プログラミング初心者にわかるように説明してください。
#↓
#他のプログラムからできるだけ変更できない仕組み
#オブジェクトが持つデータや処理のうち、別のオブジェクトから直接利用される必要のないものを隠すことを言い、
#利用する場合は外部から操作するために作られた処理を設けることを言います。
#プログラムが壊れにくくなると共に、大人数で開発をするときすべてのコードを認識する必要がなくなります。

#3. 継承
#オブジェクト指向における継承とはどのような概念か、プログラミング初心者にわかるように説明してください。
#↓
#同じようなプログラムを1か所にまとめてコードを再利用しやすくする仕組み
#似たようなオブジェクトを複数作る時に、全てのプロパティやメソッドをいちいちプログラミングするのは非常に手間が掛かるが、
#継承を使うことにより、同じ機能を実装できる。
#ゲーム作成に例えると、「車」に「トラック」も追加しようとした場合。基本操作は同じため追加も簡単にできる。

#4. ポリモーフィズム
#オブジェクト指向におけるポリモーフィズムとはどのような概念か、プログラミング初心者にわかるように説明してください。
#↓
#クラスによって同一のメソッドで異なる処理が行えるという性質。
#世の中の家電は説明書を見なくてもだいたい使い方がわかるみたいに
#車においてもアクセルが右というふうに決まっている。
#プログラムも同じ処理の名前で動いてくれると、処理名を覚える必要もないし、ミスも減らすことが出来る。

#5. 単一責任の原則
#オブジェクト指向の重要な設計原則である「単一責任の原則」について、プログラミング初心者にわかるように説明してください。
#↓
#1つのクラスは1つだけの責任を持たなければならない。
#すなわち、ソフトウェアの仕様の一部分を変更したときには、それにより影響を受ける仕様は、そのクラスの仕様でなければならない。
#「クラスが担う責任は、たったひとつに限定すべき」とする設計原則が単一責任原則です。

#xii.[Ruby][Level2] オブジェクト指向を使うことができる
#自動販売機のプログラムを書くクエスト
#1. クラスの定義
#自動販売機のプログラムをオブジェクト指向を使って書きましょう。今回実装する内容は下記の通りです。
#自動販売機のクラス VendingMachine を宣言してください
#ボタンを押すとサイダーが出るようにします。press_button メソッドを実行すると 'cider' の文字列を返してください.

class VendingMachine
    def initialize(manufacturer)
        @manufacturer = manufacturer
    end
    def press_button
        return "cider"
    end
    def press_manufacturer_name
        return @manufacturer
    end
    private def deposit_coin(countmoney)
        countmoney = gets.chomp to_i
        # 100円が貯まっていないので空文字が出力されます
        if countmoney < 100
            return ""
        # 100円しかコインは入れられず、100円が貯まっていないので空文字が出力されます
        elsif countmoney >= 100
            puts "cider"
        end
            vending_machine.press_manufacturer_name #=> private method 'press_manufacturer_name' called for ... (NoMethodError)
    end
end
vending_machine = VendingMachine.new("サントリー")
puts vending_machine.press_button
vending_machine.deposit_coin(150)
puts vending_machine.press_button
vending_machine.deposit_coin(100)
puts vending_machine.press_button
puts vending_machine.press_manufacturer_name