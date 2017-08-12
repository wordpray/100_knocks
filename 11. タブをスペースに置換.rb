file   = File.open("hightemp.txt", "r", engoding: "Shift_JIS")
buffer = file.read.gsub("\t", " ")
file   = File.open("hightemp.txt", "w", engoding: "Shift_JIS")
file.write(buffer)
file.close
