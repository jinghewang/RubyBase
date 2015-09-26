# encoding:utf-8

names = ['小林', '林', '高里', '森冈',123]
# puts names[0],names.first,names.last
names.each{|item| print "item:#{item} ";}

puts '------------------------'
names[0] = '王景鹤'
names.push "李海婷"
puts names.size

puts '-------------------'
names.each do |item|
  puts item
end

puts '-------------------'
evens = (1..10).each_with_object([]) { |i, a| a << i*2 }
# names.each_with_object([]){|i,a| a << a*i}
puts evens

# 散列
address = {name:'gq',pinyin:'gaoqiao',:postal=>"1234567"}
sym = :name
# p sym,sym.to_s,"foo".to_sym
puts address


puts address[:name]
address[:name] = 'wwwww'
puts address
address.each{|k,v| print "k:#{k} v:#{v}\n"}

# 正则表达式
puts '==================================='
puts /Ruby/i =~ '11222ruby'
s = 'ndkslsdldswjkkkwjh...'
location = /wjh/ =~ s
puts s[location..s.length-1]


