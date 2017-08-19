open('jawiki-country.json', 'r') do |input|
  while line = input.gets
    line.split('\n').each do |item|
      if match = item.match(/(FIle:*?)\|/) || match = item.match(/(ファイル:.*?)\|/)
        puts match[1]
      end
    end
  end
end
