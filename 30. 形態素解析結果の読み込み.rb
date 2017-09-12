require 'bundler/setup'
require "natto"

def morphize
  list = Array.new
  open("neko.txt", "r") do |input|
    sentense = Array.new
    while line = input.gets
      if line =~ /EOS/
        list.push(sentense) unless sentense.empty?
        sentense = Array.new
      next
      end
      item = line.chomp.split(/\t/)
      surface = item[0]
      block = item[1].split(',')
      sentense.push({surface: surface, base: block[6], pos: block[0], pos1: block[1]})
    end
  end
  return list
end
