# encoding:utf-8
$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))


def test(param)
  if param.eql?1
    print '1'
  elsif param.eql?2
    print '2'
  else
    print 'other'
  end
end

param = 3
test(param) unless param.eql?1

if not param.eql?2 then
  print '[1]not 2'
end

unless param.eql?2 then
  print '[2]not 2'
end

print '--2--' if 2 < param && param < 4


puts "*"*80
param = 3
case param
  when 1 then
    print 'case'+1.to_s
  when 2 then
    print 'case:'+2.to_s
  when 3,4,5 then
    print 'case:3-5'
  else
    print 'other'
end


array = ["a",1,nil]
array.each do |item|
  puts "current item:#{item}"
  case item
    when String
      puts 'This is string'
    when Numeric
      puts 'This is numeris'
    else
      puts 'This is other something.'
  end
end

p /zzz/ === "wewazzzzlk",String === "sdsds", (1..3) === 2
