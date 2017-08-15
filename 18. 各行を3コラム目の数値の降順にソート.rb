buffer = []
file   = File.open("hightemp", "r", encoding: "Shift_JIS")
file.each{|row| buffer << row.encode(Encoding::UTF_8)}
p buffer.map{|row| row.split(" ") }.sort{|a, b| a[2] <=> b[2]}.reverse
