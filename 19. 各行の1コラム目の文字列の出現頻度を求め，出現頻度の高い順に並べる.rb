buffer = []
file   = File.open("hightemp", "r", encoding: "Shift_JIS")
file.each{|row| buffer << row.encode(Encoding::UTF_8) }
buffer = buffer.map{|row| row.split(" ")[0] }
p buffer.map{|row| [row, buffer.count(row)]}.uniq.sort{|a, b| a[1] <=> b[1] }.reverse
