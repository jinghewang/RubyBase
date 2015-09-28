# encoding:utf-8
$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.expand_path('../../modules', __FILE__)) unless $LOAD_PATH.include?(File.expand_path('../../modules', __FILE__))

require 'me.rb'
include Me

BEGIN{  puts '--------begin-----------'}
END{  puts '---------end------------'}

puts '----------参数个数-----------------'


# 块方法
puts '-----------block method-------------'
5.times() { |i| print "i:#{i}\n" }
5.times() do |i|
  print "i:#{i}\n"
end


def mytimes
  while true
    yield
  end
end

num = 1
mytimes do
  puts "return num is:#{num}"
  num += 1
  break if num > 10
end