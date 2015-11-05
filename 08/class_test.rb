# encoding:utf-8

# load paths and require files
Dir[File.expand_path('../../base/helper.rb', __FILE__)].each { |file| require file }
Helper.load_path('../../modules',__FILE__)
Helper.require_path('../../modules/*.rb',__FILE__)

# include
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

Helper.load_path('../../base', '../../modules', __dir__, __FILE__)

p ary.class
