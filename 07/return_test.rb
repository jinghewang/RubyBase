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

def max(a, b)
  if a < b
    return b
  end
  return a
end

def max2(a, b)
  return (a < b) ? b : a;
end



hello
hello2
hello2('uu')

p get_age
p get_age2
ppp get_age3(true),get_age3(false)
ppp max(3,5),max(4, 3)

exit
