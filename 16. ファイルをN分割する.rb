cnt = gets.to_i

buffer = []
file = File.open("hightemp.txt", "r", encoding: "Shift_JIS")
file.each{|row| buffer << row.encode(Encoding::UTF_8)}
file_length = buffer.length
cnt.times do |i|
  File.open("hightemp_#{i}.txt", "r", "w") do |file|
    (file_length / cnt).times{file.puts buffer.shift}
    buffer.each{|b| file.puts b } if i + 1 == cnt
  end
end
