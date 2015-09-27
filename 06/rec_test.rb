# encoding:utf-8
$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))








# times
num = 5
num.times do |i|
  p i
end

num.times{|i| p "curren i:#{i}";}

