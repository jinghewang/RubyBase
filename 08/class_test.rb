# encoding:utf-8

# add import paths
$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.expand_path('../../base', __FILE__)) unless $LOAD_PATH.include?(File.expand_path('../../base', __FILE__))
$LOAD_PATH.unshift(File.expand_path('../../modules', __FILE__)) unless $LOAD_PATH.include?(File.expand_path('../../modules', __FILE__))

# require dir /home/base all files
Dir[File.expand_path('../../base/*.rb', __FILE__)].each { |file| require file }
require 'me.rb'

# include modules
include Me

# define begin and end
BEGIN{  puts '--------begin-----------'}
END{  puts '---------end------------'}


puts '----------参数个数-----------------'

p Array.new
p Array.new(3) { |index| index * 2 }
p Array.new(2)
p Array.new([111,222])
p Array.new(2, Hash.new)

ary = []
str = 'www'

ppp ary.class, str.class
ppp ary.instance_of?(Array), str.instance_of?(String)
obj = BasicObject.new
#p obj

puts '----------------class--------------'

Helper.dividing_line(' class ','>','<')


p ary.class
