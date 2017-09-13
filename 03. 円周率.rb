str = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."

str = gets.chomp.to_s

uppercase = []
num = []

# p str.gsub(/,|\./,'').split.map{ |s| s.length }

str.gsub(/,|\./,'').split.map{ |s| uppercase << s if s =~ /^[A-Z]/ }
str.gsub(/,|\./,'').split.map{ |s| num << s if s =~ /^[0-9]/ }

puts uppercase.count + num.count
