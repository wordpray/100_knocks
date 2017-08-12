file = File.open("hightemp.txt", "r", encoding: "Shift_JIS")
buffer = []
file.each{|row| buffer << row.encode(Encoding::UTF_8).split(" ") }
col1, col2 = buffer.map{ |r| r[0] }, buffer.map{|r| r[1]}

File.open("./col1.txt", "w") {|file| file.puts col1 }
File.open("./col2.txt", "w") {|file| file.puts col2 }
