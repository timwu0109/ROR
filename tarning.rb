# 1. 請使用迴圈的方式，在畫面上印出以下結果：

# *
# **
# ***
# ****
# *****

# 1.upto(5) do |n|
#   puts '*' * n
# end

# 2. 請完成以下計算潤年的方法：

# def is_leap_year?(y)
#   # 龍哥寫法
#   if y % 4 == 0 && y % 100 != 0 || y % 400 == 0
#     'true'
#   else
#     'false'
#   end

#   # 我的寫法
#   # if y % 4 == 0 
#   #   if y % 100 == 0
#   #     if y % 400 == 0
#   #       'true'
#   #     else
#   #       'false'
#   #     end
#   #   else
#   #     'true'
#   #   end
#   # else
#   #    'false'
#   # end
  
# end

# puts is_leap_year?(1998)  # 印出 false
# puts is_leap_year?(2000)  # 印出 true
# puts is_leap_year?(2100)  # 印出 false


# 3. 請讓這個 BMI 計算方法可以顯示期待的結果

# def bmi_calculator(height, weight)
#   h =  height/100.0
#   w =  weight

#   (w / (h*h)).round(1)
# end

# puts bmi_calculator(170, 50) # 印出 17.3 (小數點以下一位，四捨五入)
# puts bmi_calculator(180, 65) # 印出 20.1 (小數點以下一位，四捨五入)



# # 4. 練習自己做select 方法
# def my_select(list)
#   result = []
#   list.each do |i|
#     result << i if yield(i)
#   end
#   result
# end

#  p my_select([ 1, 2, 3, 4, 5]) {|i| i.odd?}




# #  1. 停車場的收費方式為：

# # 機車：

# # 不計時數，每天 20 元
# # 汽車

# # 前 2 個小時，每小時 40 元；超過 2 小時之後每小時 30 元。
# # 未滿一小時以一小時計費。
# # 停車費每天最高上限為 500 元。


# def calc_parking_fee(vehicle_type, parking_hour)
#   fee = 0 
#   parking_hour = parking_hour.ceil

#   case  vehicle_type
#   when :motocycle
#     fee = 20 
#   when :car
#     if parking_hour <= 2
#       fee = parking_hour * 40
#     else
#       fee = 80+(parking_hour - 2) *30
#     end
    
#     if fee >= 500
#       fee = 500
#     end
#   end

#   fee
  
# end

# puts calc_parking_fee(:motocycle, 2)  # 印出 20
# puts calc_parking_fee(:motocycle, 8)  # 印出 20

# puts calc_parking_fee(:car, 1.5)      # 印出 80
# puts calc_parking_fee(:car, 4)        # 印出 140
# puts calc_parking_fee(:car, 5.5)      # 印出 200
# puts calc_parking_fee(:car, 18)       # 印出 500


class ATM
  attr_reader :balance

  def initialize(balance)
    @balance = balance
  end

  def withdraw(minus)
    @balance = @balance - minus
  end
  
  def deposit(plaus)
    @balance = @balance + plaus
  end
end

atm = ATM.new(10)

atm.withdraw(5)
puts atm.balance  # 印出 5

atm.deposit(10)
puts atm.balance  # 印出 15