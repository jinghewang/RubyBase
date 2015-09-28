# encoding:utf-8
$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.expand_path('../../modules', __FILE__)) unless $LOAD_PATH.include?(File.expand_path('../../modules', __FILE__))

require 'me.rb'
include Me

BEGIN{  puts '--------begin-----------'}
END{  puts '---------end------------'}

puts '----------参数个数-----------------'

=begin
v1 = 1
class MyClass
  v2 = 2
  puts local_variables.to_s + " call 1"  # => [:v2]call 1
  def my_method
    v3 = 3
    puts local_variables.to_s + " call 2"
  end
  puts local_variables.to_s + " call 3"  # => [:v2]call 3
end

obj = MyClass.new
obj.my_method                           # =>[:v3] call 2
puts local_variables.to_s + " call 4"    # =>[:v1, :obj]call 4
=end


# --------------------------------------
puts '========================================'

v1 = 1
MyClass = Class.new do
  v2 = 2
  puts local_variables.to_s + "call 1"     # => [:v2, :v1]call 1
  define_method :my_method do
    v3 = 3
    puts local_variables.to_s + " call 2"
  end
  puts local_variables.to_s + "call 3"      # => [:v2, :v1]call 3
end
MyClass.new.my_method                       # => [:v3, :v2, :v1] call 2
puts local_variables.to_s + "call 4"        # => [:v1]call 4






