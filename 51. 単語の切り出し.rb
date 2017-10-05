File.foreach('50.nlp.txt') do |line|
  line.split(/\s/).each do |word|
    puts word.gsub(/\,|\.|\(|\)|\[|\]|"|'|-|\?|\!/, '')
  end
end
