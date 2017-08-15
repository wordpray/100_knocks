buffer = []
file   = File.open("hightemp.txt", "r", encoding: "Shift_JIS")
file.each{|row| buffer << row.encode(Encoding::UTF_8) }
p buffer.map{|row| row.split(" ")[0] }.uniq
