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

def block_method(a, b)
  return yield(a,b)
end

def check_block(a, b)
  return yield(a,b) if block_given?
  'no block'
end

def closure_method(y)
  x = "GoodBye"
  yield(y)
end

num = 1
mytimes do
  puts "return num is:#{num}"
  num += 1
  break if num > 10
end
a, b = 3, 5




# { } 方式
p block_method(a, b) { |a, b| print "block_method a:#{a} b:#{b}\n"; a + b; }

# do end 方式，不能直接输出，会报错，不知道为什么
result = block_method(a, b) do |a, b|
  print "block_method2 a:#{a} b:#{b}\n";
  a + b;
end
p result

# no block 测试
puts check_block(a, b){|a, b| 'This is a block'}
puts check_block(a, b)

# 引用外部变量测试
x = 'Hello'
result = closure_method('@xianlinbox') { |y| print "#{x} World, #{y}" }
p result