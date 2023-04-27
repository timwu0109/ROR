# 選出1-100單數
# p (1..100).select{ |i| i%2 != 0}
# p (1..100).select{ |i| i.odd? }
# 加總1-100
# p (1..100).reduce{ |acc , cv|  acc += cv}
# p (1..100).sum
# 找到1-100隨機５個數字
# p (1..100).to_a.shuffle.first(5)
# p (1..100).to_a.sample