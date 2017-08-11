def to_ngram(seq)
  seq = seq.join if seq.instance_of?(Array)   
  seq.chars.each_cons(2).map{|chars| chars.join }
end 

X = to_ngram("paragraph")
Y = to_ngram("paragraph")

p "X:#{X.include?('se')}, Y:#{Y.include('se')}"
