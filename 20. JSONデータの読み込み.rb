require 'json'
main_content = ""
File.open("jawiki-country.json") do |file|
  while line = file.gets
    buffer = JSON.parse(line)
    main_content = buffer["text"] if buffer["title"].match(/イギリス/)
  end
end

p main_content
