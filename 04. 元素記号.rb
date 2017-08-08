str = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."

words = str.gsub(/,|\./,"").split
target = [0, 4, 5, 6, 7, 8, 14, 15, 18]

words1 = words.each_with_index.map{|n ,i| [i, n[0]] if target.include?(words.index(n))} 
words1 = words1.compact

words2 = words.each_with_index.map{ |n, i| [i, n[0..1]] unless target.include?(words.index(n))}
words2 = words2.compact

p words1.concat(words2).sort.to_h
