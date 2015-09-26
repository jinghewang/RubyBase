# encoding:utf-8

print "中国是四大文明古国\n","之一\n"

puts '----------------------------'

=begin
这是是多行注释
行1
行2
=end

# width
width = 10;
height = 20; # height
puts "area:#{width*height}"

puts (1.is_a? Fixnum),("1".is_a? Fixnum),("1".is_a? String)
puts '----'
puts "1".class,String.name ,"1".class == String.name

puts '-' * 40
a = 10
if a < 5 then
  puts '<'
elsif 5<= a && a <= 10 then
  puts 'zhong'
else
  puts '>10'
end

# if else
if a < 5
  puts '<'
elsif 5<= a && a <= 10
  puts 'zhong'
else
  puts '>10'
end


# while
a =1
while a < 5 do
  puts a;
  a+=1
end

# while2
a = 1
while a < 5
  puts a;
  a+=1
end

# times
puts '*'*40
num = 10;
num.times { |i|
  puts i;
}

# time2
num.times do |i|
  puts '9' + i.to_s
end


