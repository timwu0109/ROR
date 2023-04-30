# Rake
# desc 'mail getter'
# task :sendmail do 
#   puts 'get mail form database'
#   sleep 2
#   puts 'getting mail......'
#   sleep 2
#   puts 'down!!'
# end

# task :default => :sendmail



# 任務相依性 > 在做某些任務之前會先做另外一個任務
# task :open_the_door do 
#   puts "開門"
# end

# task :go_to_tolite => :open_the_door do
#   puts "上廁所"
# end

# task :default => :go_to_tolite


# rails 裡面很常看到db:migrate 也是透過rake做出來的任務
# 但我們直接去run db:migrate會出錯 Don't know how to build task 'db:migrate' (See the list of available tasks with `rake --tasks`)
#  所以我們會在前面加一個namespace db把他群組起來這樣就可以抓到了

namespace :db do
  task :migrate do
    puts "migrate!!"
  end    
end

