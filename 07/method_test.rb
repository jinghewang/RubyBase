# encoding:utf-8
$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.expand_path('../../modules', __FILE__)) unless $LOAD_PATH.include?(File.expand_path('../../modules', __FILE__))

require 'me.rb'
include Me

BEGIN{  puts '--------begin-----------'}
END{  puts '---------end------------'}

puts '----------参数个数-----------------'


def foo
  print 'foo'
end

def foo2(a='wjh')
  print 'foo:' + a.to_s
end

def foo3(a,*args)
  print a
  print args
end

def a(a, *b, c)
  ppp a, b, c
end

def area1(x:, y:, z:)
  xy = x * y
  yz = y * z
  zx = z * x
  (xy + yz + zx) * 2
end


def area2(x:0, y:1, z:4)
  xy = x * y
  yz = y * z
  zx = z * x
  (xy + yz + zx) * 2
end

def area3(x:0, y:1, z:4, **args)
  xy = x * y
  yz = y * z
  zx = z * x
  p args
  (xy + yz + zx) * 2
end

def func(a, b:2, c:3)
  a + b + c
end

def func2(a, b, c)
  ppp a, b, c
end


# 此种方式不能实现关键字参数
def bb2(a=1,b=2)

end

def bb(a:1, b:0)
  print "a:#{a} b:#{b}\n"
  # return a * 2 + b
end

ppp foo
ppp foo2
ppp foo2('wjh')
ppp foo3('wjh','zz','qq')
a(11,22,33,44)
ppp area1(x: 2, y: 3, z: 4), area1(x: 2, z: 4, y: 3)
ppp area2(x: 2, y: 3, z: 4),area2(x: 2, y: 3), area2(x: 2, z: 4, y: 3)
ppp area3(x: 2, z: 4, y: 3, u:12, w:334)
ppp bb(a:2,b:3),bb({a:2,b:3}), bb(b:4, a:3)
ppp func(2,b:3, c:4),func(1),func(1, c:4, b:7)
ppp func(2,{c:5, b:6}),func(2,{c:5})

list = [2, 3]
ppp func2(1,2,3),func2(1,*list)
exit;

# 对象方法
p 5.to_s
p "sss".upcase

# 类方法
p Array.new(3)
p Time.now

