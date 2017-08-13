col1 = File.open("./col1.txt", "r").read.split("\n")
col2 = File.open("./col2.txt", "r").read.split("\n")

buffer = []

col1.length.times{ |i| buffer << [col1[i], col[2]] }
buffer = buffer.map{ |b| p b.join("\t") }
File.open("./col1_col2.txt", "w"){|file| file.puts buffer }
