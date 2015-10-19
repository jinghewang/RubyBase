class Helper

  def self.require_file(name)
    return File.dirname(__FILE__) + name
  end

  def self.out_var(*params)
    for param in params
      puts "value:#{param} type:#{param.class}"
    end
  end

  def self.dividing_line(title, prechar='*', sufchar='*', prelength=20, suflength=20)
    msg = prechar*prelength + title + sufchar*suflength
    puts msg
    return msg
  end

end