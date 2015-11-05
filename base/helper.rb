class Helper

  @counter    # 跟踪页面被点击的次数
  @site        # 跟踪所有页面被点击的次数

  def self.require_file(name)
    return File.dirname(__FILE__) + name
  end

  def self.out_var(*params)
    for param in params
      puts "value:#{param} type:#{param.class}"
    end
  end

  # @param String title
  # @param String prechar
  # @param String sufchar
  # @param Integer prelength
  # @param Integer suflength
  # @return String
  def self.dividing_line(title, prechar='*', sufchar='*', prelength=20, suflength=20)
    msg = prechar*prelength + title + sufchar*suflength
    puts msg
    return msg
  end


  def test(name)
    puts name
  end


  def self.get_home_path()
    return File.expand_path('../../', __FILE__)
  end


  def self.load_path(*paths, dir)
     paths.each { |path|
       item2 = File.expand_path(path,dir)
       $LOAD_PATH.unshift(item2) unless $LOAD_PATH.include?(item2)
     }
  end

  def self.require_path(*paths, dir)
    paths.each { |path|
      item2 = File.expand_path(path, dir)
      Dir[item2].each { |file| require file }
    }
  end

  def self.include_path(*modules)
    modules.each { |m|
      include(m) unless include?(m)
    }
  end

end