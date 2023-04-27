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