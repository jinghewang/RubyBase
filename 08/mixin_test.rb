# encoding:utf-8
$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.expand_path('../../base', __FILE__)) unless $LOAD_PATH.include?(File.expand_path('../../base', __FILE__))
$LOAD_PATH.unshift(File.expand_path('../../modules', __FILE__)) unless $LOAD_PATH.include?(File.expand_path('../../modules', __FILE__))


module M1

  def meth
    self.class + "meth"
  end

end

module M2

  def meth
    "meth"
  end

end

class B
  def meth_b
    'meth-b'
  end
end

class C < B
  include M1

  def meth2
    'meth2'
  end
end


c = C.new

# 判断是否 include 的库
p C.include?(M1)

# 查看调用关系
p C.ancestors()
p C.superclass()


# 新的测试内容
require 'helper'
require 'me'
include Me
Helper::dividing_line('is_a')
s = "ssds sss"
ppp s.is_a?(String), s.is_a?(Object)
p 1.class,1.0.class
