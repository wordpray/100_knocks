str.length.times{ |n| puts str[n] if n.even?}

japa,math, his, scie
1,2,3,4
1,2,3,4
1,2,3,4
1,2,3,4


require 'csv'
CSV.new(ARGF.file).each do |row|
  puts row
  jap= row
  math=
  his= 
  sci= 
end
