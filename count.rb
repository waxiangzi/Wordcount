#!/usr/bin/env ruby

input = File.open(ARGV[0], 'r')
dic = Hash.new(0)
while (w = input.gets)
  dic[w]+=1 if w && !w.strip!.empty?
end
ret = dic.sort_by { |_, value| -value }[0,5]
puts "前5频次结果："
ret.each { |entry| puts "单词: %s \t共:%s次" % [entry[0], entry[1] ] }