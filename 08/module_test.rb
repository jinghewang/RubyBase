# encoding:utf-8
$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.expand_path('../../modules', __FILE__)) unless $LOAD_PATH.include?(File.expand_path('../../modules', __FILE__))

require 'me.rb'
include Me
include FileTest

BEGIN{  puts '--------begin-----------'}
END{  puts '---------end------------'}

puts '----------参数个数-----------------'

filename = File.expand_path('../1.txt', __FILE__)

ppp 'exist:', FileTest.exist?(filename), FileTest.size(filename)

p Math::PI, Math.sqrt(2)

class C
  require 'me.rb'
  include Me
end

c = C.new
p c.include?(Me)

include Math
p sqrt(2)












exit

# 异常处理
begin
  p exist?('1.txt')
  puts 'never get here'
rescue SystemExit
  puts 'rescued a SystemExit exception'
end
puts 'after begin block'


