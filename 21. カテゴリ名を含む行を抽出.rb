open('jawiki-country.json', 'r') do |input|
  while line = input.gets
    line.split('\n').each do |item|
      if item =~ /Category/
        puts item
      end
    end
  end
end
