elems = Array.new
data = false

File.foreach('nlp.txt.xml') do |line|
  if line =~ /<token.*>/
    data = Hash.new
  end

  if item = line.match(/<(word|lemma|POS)>(.*)<\/.*>/)
    data[item[1]] = item[2]
  end

  if line =~ /<\/token>/
    elems.push(data)
  end
end

elems.each do |elem|
  line = ""
  elem.each do |item|
    line += "#{item[1]}\t"
  end
  print line.sub(/\t$/,"\n")
end
