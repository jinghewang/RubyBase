# encoding:utf-8
$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))

str1 = "wjh"
str2 = "wjh"
str3 = ['w', 'j', 'h']
print str1.__id__, "\t", str2.__id__, "\n"
print str1.equal?(str2), "\t", str1 == str2, "\t", str1 === str2, "\n"
print str1.eql?(str2), "\t", str1 == str2, "\n"
print str1.eql?(str3), "\t", str1 == str3, "\n"
p 1 == 1.0, 1.eql?(1.0)

hash = {name:'wjh', age:12, sex:'male', 0=>'111'};
p hash[0],hash[0.0]

