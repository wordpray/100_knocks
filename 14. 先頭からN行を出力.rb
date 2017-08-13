cnt = gets.to_i
file = File.open("hightemp.txt", "r", encoding: "Shift_JIS")
cnt.times{|i| p file.gets.encode(encoding::UTF_8) }
