
File.foreach('nlp.txt.xml') do |line|
  if item = line.match(/<word>(.*)<\/word>/)
    p item[1]
  end
end
