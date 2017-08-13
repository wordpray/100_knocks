cnt    = gets.to_i
buffer = []
file   = File.open("hightemp", "r", encoding: "Shift_JIS")

file.each{|row| buffer << row.encode(Encoding::UTF_8) }
cnt.times{|i| p buffer.pop }
