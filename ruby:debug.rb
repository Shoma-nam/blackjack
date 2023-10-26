# example.rb
require 'debug'

def some_method
  a = 10
  b = 20
  binding.debug   # ここでデバッグセッションが開始されます
  c = a + b
end

some_method
    