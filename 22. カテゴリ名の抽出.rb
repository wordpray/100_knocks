open('jawiki-country.json', 'r') do |input|
  while line = input.gets
    line.split('\n').each do |item|
      if item =~ /Category/
        p item.match(/Category:(.*)(?:|\*)(?:\]\])/)[1].sub(/\|\*/, '')
      end
    end
  end
end
