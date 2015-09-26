class FileReader

  @@count = 0 # 调用次数
  $appkey = 'HLT'
  PI = 3.1415

  def initialize(filename)
    @@count += 1
    @file = filename
  end

  def self.get_instance_count
    return @@count;
  end

  def readfile1(filename=nil)
    puts '----------file 1-------------------'
    file = File.open(filename)
    text = file.read()
    print text
    file.close()
  end

  def readfile2(filename=nil)
    puts '----------file 2------------------'
    file = File.open(filename)
    file.each_line { |line| print line; }
    file.close
  end

  def readfile3(filename=nil)
    puts '----------file 3-----------------'
    file = File.open(filename)
    file.each_line do |line|
      print line
    end
    file.close
  end

  def readfile4(filename=nil)
    puts '----------file 4-----------------'
    file = File.open(filename)
    file.each_line do |line|
      if /123456/ =~ line
        print line
      end
    end
    file.close
  end


end