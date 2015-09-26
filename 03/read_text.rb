# encoding:utf-8

filename = File.expand_path('../text.txt', __FILE__);


def readfile1(filename)
  puts '----------file 1-------------------'
  file = File.open(filename)
  text = file.read()
  print text
  file.close()
end

def readfile2(filename)
  puts '----------file 2------------------'
  file = File.open(filename)
  file.each_line{|line| print line ;}
  file.close
end

def readfile3(filename)
  puts '----------file 3-----------------'
  file = File.open(filename)
  file.each_line do |line|
    print line
  end
  file.close
end

def readfile4(filename)
  puts '----------file 4-----------------'
  file = File.open(filename)
  file.each_line do |line|
    if /123456/ =~ line
      print line
    end
  end
  file.close
end


