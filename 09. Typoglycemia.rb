str = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."
ans = []
str.split(" ").map{ |c| c.split("") }.each do |c|
    c = c[0],c[1..(c.length - 2)].shuffle.join,c[c.length - 1] if c.length > 4
    ans << c.join
end
p ans.join(" ")
