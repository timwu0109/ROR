a  = { name: 'tim' , age: 18}
# b  = { :name => 'oli' , :age => 16}  早期Ruby寫法，後來發展出上面這種讓東西看起來像其他語言

p a[:name] 
p b[:name]
# 拿到對的key 才會拿到對的 value 以下拿法都是錯誤的，ruby 拿法特殊冒號記得要放在前面
# p a[name:] 
# p a["name"] 
