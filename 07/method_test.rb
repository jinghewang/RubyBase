# encoding:utf-8
$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.expand_path('../../modules', __FILE__)) unless $LOAD_PATH.include?(File.expand_path('../../modules', __FILE__))

require 'me.rb'
include Me

BEGIN{  puts '--------begin-----------'}
END{  puts '---------end------------'}

# break
puts '--------------------------------------'
def hello
  print 'hello'+ "\n"
end

def hello2(msg='wjh')
  print "hello #{msg}\n"
end

def get_age
  return 1
end

def get_age2
  1
end

def get_age3(b=false)
  if b
    1
  else
    0
  end
end




hello
hello2
hello2('uu')

p get_age
p get_age2
ppp get_age3(true),get_age3(false)

exit


# 对象方法
p 5.to_s
p "sss".upcase

# 类方法
p Array.new(3)
p Time.now


# 块方法
puts '-----------block method-------------'
5.times() { |i| print "i:#{i}\n" }
5.times() do |i|
  print "i:#{i}\n"
end